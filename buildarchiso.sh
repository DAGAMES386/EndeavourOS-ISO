#! /bin/bash

sudo ./mkarchiso -v "." 2>&1 | tee "eosiso_$(date -u +'%Y.%m.%d-%H:%M').log"
