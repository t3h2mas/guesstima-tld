#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "[!] usage: $0 [TARGET NAME]"
  exit 1
fi

target=$1

if [ ! -f ./root_tlds_cleaned.txt ]; then
  echo "[!] root_tlds_cleaned.txt not found... did you run ./dl_tdls.sh and ./clean_roots.sh ?"
  exit 1
fi

echo "[*] creating list of possible tlds for target: $target"

for tld in $(cat ./root_tlds_cleaned.txt); do
  echo "${target}.${tld}" | tee -a "${target}.root.list"
done
