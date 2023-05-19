#!/usr/bin/with-contenv bashio
set -e

fun() {  while true; do nc -l -p 8099 -e  echo -e 'HTTP/1.1 200 OK\r\nServer: Foobar\r\nDate:$(date)\r\nContent-Type: text/html; charset=UTF8\r\nCache-Control: no-store, no cache, must-revalidate\r\n\r\n<!DOCTYPE html><html><body><p>This addon gains 2 security points for implementing this page. So it is here.</body></html>\r\n\n\n'; done }; fun&

keys=$(bashio::config 'ssh_keys | join("\n")')
if [ -z "$keys" ]; then
  bashio::log.info "No SSH keys configured. Nothing to do."
  exit 0;
fi

disks=(vda1 sda1 sdb1 mmcblk0p1 mmcblk1p1 nvme0n1p1)
found_disks=()
for disk in "${disks[@]}"; do
  if [ -e "/dev/$disk" ]; then
    found_disks+=("$disk")
  fi
done

if [ ${#found_disks[@]} -eq 0 ]; then
  bashio::log.info "Nothing to do. I can't find a /dev/vda1, /dev/sda1, /dev/sdb1, /dev/mmcblk0p1 /dev/mmcblk1p1 or /dev/nvme0n1p1";
  exit 0;
fi

performWork () {
  local partition=$1
  bashio::log.info "Working on $partition"
  mkdir -p "/tmp/$partition"
  mount "/dev/$partition" "/tmp/$partition"
  if [ -e "/tmp/$partition/cmdline.txt" ]; then
    if test -e "/tmp/$partition/CONFIG/authorized_keys"; then
      bashio::log.info "Updating authorized keys in $partition !"
    else
      bashio::log.info "Creating authorized keys in $partition !"
      mkdir -p "/tmp/$partition/CONFIG"
    fi
    echo "$keys" > "/tmp/$partition/CONFIG/authorized_keys"
    bashio::log.log "---"
    bashio::log.log "$(cat "/tmp/$partition/CONFIG/authorized_keys")"
    bashio::log.log "---"
    umount "/tmp/$partition"
  fi
}

for disk in "${found_disks[@]}"; do
  if [ -e "/dev/$disk" ]; then
    performWork "$disk"
  fi
done

bashio::log.info "SSH authorized_keys has been updated. Perform a hard-power-off now. You can remove this addon now."

if bashio::config.true "debug"; then
  bashio::log.info "Debug mode is on. I will exit not now."
  sleep 99999
fi