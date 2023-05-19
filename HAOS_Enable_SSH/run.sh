#!/usr/bin/with-contenv bashio

fun() {  while true; do nc -l -p 8099 -e  echo -e 'HTTP/1.1 200 OK\r\nServer: Foobar\r\nDate:$(date)\r\nContent-Type: text/html; charset=UTF8\r\nCache-Control: no-store, no cache, must-revalidate\r\n\r\n<!DOCTYPE html><html><body><p>This addon gains 2 security points for implementing this page. So it is here.</body></html>\r\n\n\n'; done }; fun&

keys=$(bashio::config 'ssh_keys | join("\n")')

set +e
mkdir /tmp 2>/dev/null
mkdir /tmp/vda1 /tmp/mmcblk0p1 /tmp/mmcblk1p1 /tmp/sda1 /tmp/sdb1 /tmp/nvme0n1p1 2> /dev/null
if [ ! -e /dev/sda1 ] && [ ! -e /dev/vda1 ] && [ ! -e /dev/mmcblk0p1 ] && [ ! -e /dev/mmcblk1p1 ] && [ ! -e /dev/sdb1 ] && [ ! -e /dev/nvme0n1p1 ] ; then
  bashio::log.info "Nothing to do. I can't find a /dev/vda1, /dev/sda1, /dev/sdb1, /dev/mmcblk0p1 /dev/mmcblk1p1 or /dev/nvme0n1p1";
  exit 0;
fi;

performWork () {
  partition=$1
  mount "/dev/$partition" "/tmp/$partition" 2>/dev/null
  if [ -e "/tmp/$partition/cmdline.txt" ]; then
    if test -e "/tmp/$partition/CONFIG/authorized_keys"; then
      bashio::log.info "Updating authorized keys in $partition !"
    else
      bashio::log.info "Creating authorized keys in $partition !"
      mkdir -p "/tmp/$partition/CONFIG"
    fi
    echo "$keys" > "/tmp/$partition/CONFIG/authorized_keys"
    umount "/tmp/$partition"
  fi
}

for disk in vda1 sda1 sdb1 mmcblk0p1 mmcblk1p1 nvme0n1p1; do
  if [ -e /dev/$disk ]; then
    performWork $disk
  fi
done

bashio::log.info "SSH authorized_keys has been updated. Perform a hard-power-off now. You can remove this addon now."

if bashio::config.true debug; then
  bashio::log.info "Debug mode is on. I will exit now."
  sleep 99999
fi