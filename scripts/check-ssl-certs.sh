#!/usr/bin/env bash

domain=$1

ips="$(nslookup $1 | grep -zoP "Non-authoritative(.|\n)+" | grep -aPo "\d+\.\d+\.\d+\.\d+")";

for ip in $ips; do
    echo "Checking $domain on $ip";
    curl --resolve $domain:443:$ip https://$domain -s -S > /dev/null
    curl --verbose --resolve $domain:443:$ip https://$domain 2>&1 | grep -E "expire"
done;
