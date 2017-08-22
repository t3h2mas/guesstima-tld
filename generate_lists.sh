#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo "[!] usage: $0 [TARGET NAME]"
  exit 1
fi

target="$1"

if [ ! -f root_tlds.txt ] || [ ! -f suffixed_tlds.txt ]; then
  echo "[*] downloading tld lists"
  ./dl_tlds.sh 
fi

if [ ! -f root_tlds_cleaned.txt ]; then
  echo "[*] cleaning the root list"
  ./clean_roots.sh
fi

if [ ! -f suffixed_tlds_cleaned.txt ]; then
  echo "[*] cleaning the suffix list"
  ./clean_suffixed.sh
fi

echo "[*] making root list"
./make_root_list.sh "$target"

echo "[*] making suffix list"
./make_suffix_list.sh "$target"

echo "[*] built lists"
wc -l *.list

