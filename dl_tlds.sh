#!/bin/bash

root_tlds="https://data.iana.org/TLD/tlds-alpha-by-domain.txt"
suffixed_tlds="https://publicsuffix.org/list/public_suffix_list.dat"

echo "[*] downloading root TLDs"
curl -o root_tlds.txt "$root_tlds"
echo

echo "[*] downloaded suffixed TLDs"
curl -o suffixed_tlds.txt "$suffixed_tlds"
echo
