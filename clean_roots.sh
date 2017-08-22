#!/bin/bash

cat root_tlds.txt | grep -v -- -- | tr '[:upper:]' '[:lower:]' > root_tlds_cleaned.txt
