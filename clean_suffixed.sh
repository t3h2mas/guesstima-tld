#!/bin/bash

cat suffixed_tlds.txt | grep -v "^$" | grep -v "//" | sed 's/^\*\.//g' > suffixed_tlds_cleaned.txt
