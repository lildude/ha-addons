#!/usr/bin/with-contenv bashio

CERT_DIR=/data/certificates
WORK_DIR=/data/workdir

# Let's encrypt
LE_UPDATE="0"

# DuckDNS
if bashio::config.has_value "ipv4"; then IPV4=$(bashio::config 'ipv4'); else IPV4=""; fi
if bashio::config.has_value "ipv6"; then IPV6=$(bashio::config 'ipv6'); else IPV6=""; fi

if bashio::config.has_value "algo"; then ALGO=$(bashio::config 'algo'); else ALGO="secp384r1"; fi
if bashio::config.has_value "seconds"; then WAIT_TIME=$(bashio::config 'seconds'); else WAIT_TIME="300"; fi
TOKEN=$(bashio::config 'token')
DOMAIN=$(bashio::config 'domain')
PROVIDER=$(bashio::config 'provider')
EMAIL=$(bashio::config 'email')

# Function that performs a renew
function le_renew() {
    local domain_args=()
    local aliases=""

    aliases=$(bashio::config 'aliases | join(" ")')

    bashio::log.info "Renew certificate for domain: ${DOMAIN} and aliases: $(echo -n "${aliases}")"

    # If we have a duckdns.org certificate already, check the domain names are still the same and the cert is still valid.
    cert="${CERT_DIR}/${DOMAIN}/cert.pem"
    if [ -f "${cert}" ]; then
        bashio::log.info "Checking existing cert..."
        certnames="$(openssl x509 -in "${cert}" -text -noout | grep DNS: | sed 's/DNS://g' | tr -d ' ' | tr ',' '\n' | sort -u | tr '\n' ' ' | sed 's/ $//')"
        givennames="$(echo "${DOMAIN}" "${aliases}"| tr ' ' '\n' | sort -u | tr '\n' ' ' | sed 's/ $//' | sed 's/^ //')"
        if [ "${certnames}" != "${givennames}" ]; then
            bashio::log.info "Certificate names do not match, requesting new certificate."
            issue_cert=1
        fi
        if ! (openssl x509 -checkend $((30 * 86400)) -noout -in "${cert}" > /dev/null 2>&1); then
            bashio::log.info "Certificate is due for renewal, auto-renewing."
            issue_cert=1
        fi
    else
        bashio::log.info "No certificate found for ${DOMAIN}, requesting new certificate."
        issue_cert=1
    fi

    if [ -n "${issue_cert:-}" ]; then
        # Order is important as we want the duckdns.org domain to be first
        for domain in $(echo "${DOMAIN}" "${aliases}" | tr ' ' '\n' | uniq | tr '\n' ' '); do
            domain_args+=("--domain" "${domain}")
            dehydrated --cron --algo "${ALGO}" --hook ./hooks.sh --challenge dns-01 "${domain_args[@]}" --out "${CERT_DIR}" --config "${WORK_DIR}/config" || true
        done
        bashio::log.info "Certificate successfully issued."
    else
        bashio::log.info "Certificate still valid. Skipping renew!"
    fi

    LE_UPDATE="$(date +%s)"
}

# Register/generate certificate if terms accepted
if bashio::config.true 'accept_terms'; then
    # Init folder structs
    mkdir -p "${CERT_DIR}"
    mkdir -p "${WORK_DIR}"

    # Clean up possible stale lock file
    if [ -e "${WORK_DIR}/lock" ]; then
        rm -f "${WORK_DIR}/lock"
        bashio::log.warning "Reset dehydrated lock file"
    fi

    bashio::log.info "Registering account with ${PROVIDER}..."

    # Generate new certs
    if [ ! -d "${CERT_DIR}/live" ]; then
        # Create dehydrated config file
        touch "${WORK_DIR}/config"
        if bashio::config.has_value "cleanup"; then
            echo "AUTO_CLEANUP=yes" >> "${WORK_DIR}/config"
        fi
        echo "CA=${PROVIDER}" >> "${WORK_DIR}/config"
        if [ -n "${EMAIL}" ]; then
            echo "CONTACT_EMAIL=${EMAIL}" >> "${WORK_DIR}/config"
        fi
        dehydrated --register --accept-terms --config "${WORK_DIR}/config"
    fi
fi

# Run duckdns
while true; do

    [[ ${IPV4} != *:/* ]] && ipv4=${IPV4} || ipv4=$(curl -s -m 10 "${IPV4}")
    [[ ${IPV6} != *:/* ]] && ipv6=${IPV6} || ipv6=$(curl -s -m 10 "${IPV6}")

    # Get IPv6-address from host interface
    if [[ -n "$IPV6" && ${ipv6} != *:* ]]; then
        ipv6=
        bashio::cache.flush_all
        for addr in $(bashio::network.ipv6_address "$IPV6"); do
	    # Skip non-global addresses
	    if [[ ${addr} != fe80:* && ${addr} != fc* && ${addr} != fd* ]]; then
              ipv6=${addr%/*}
              break
            fi
        done
    fi

    if [[ ${ipv6} == *:* ]]; then
        if answer="$(curl -s "https://www.duckdns.org/update?domains=${DOMAIN}&token=${TOKEN}&ipv6=${ipv6}&verbose=true")" && [ "${answer}" != 'KO' ]; then
            bashio::log.info "${answer}"
        else
            bashio::log.warning "${answer}"
        fi
    fi

    if [[ -z ${ipv4} || ${ipv4} == *.* ]]; then
        if answer="$(curl -s "https://www.duckdns.org/update?domains=${DOMAIN}&token=${TOKEN}&ip=${ipv4}&verbose=true")" && [ "${answer}" != 'KO' ]; then
            bashio::log.info "${answer}"
        else
            bashio::log.warning "${answer}"
        fi
    fi

    now="$(date +%s)"

    if bashio::config.true "accept_terms" && [ $((now - LE_UPDATE)) -ge 43200 ]; then
        le_renew
    fi

    sleep "${WAIT_TIME}"
done
