#!/bin/bash

DIRORIGEM="/tmp/tmppublishr/storage/uploads/"
DIRDESTINO="/tmp/tmppublishr/staging.storage/uploads/"

SITES="harmony
dsp
dreamspinner
mango"

for SITE in $SITES; do
    for PASTA in authors downloadables books; do
        rsync --ignore-existing -raz ${DIRORIGEM}/${SITE}/${PASTA}/* ${DIRDESTINO}/${SITE}/${PASTA}/ ;
    done
done
