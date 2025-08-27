#!/bin/bash

MSG=$2
./resolve_symlinks.sh
git commit -m "$MSG"
git push
