#!/usr/bin/env bash

fontforge -script fontforge-convert.pe src/KumikoPunch-Thin.sfd
fontforge -script fontforge-convert.pe src/KumikoPunch-Regular.sfd
fontforge -script fontforge-convert.pe src/KumikoPunch-Bold.sfd

fontmake                                           \
    --output         variable                      \
    --output-path    otf/KumikoPunch-VF.otf      \
    --mm-designspace src/KumikoPunch.designspace \
    --keep-overlaps

rm -rf src/KumikoPunch-Thin.ufo
rm -rf src/KumikoPunch-Regular.ufo
rm -rf src/KumikoPunch-Bold.ufo
