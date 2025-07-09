#!/usr/bin/env bash

fontforge -script fontforge-convert.pe src/KumikoInverse-Thin.sfd
fontforge -script fontforge-convert.pe src/KumikoInverse-Regular.sfd
fontforge -script fontforge-convert.pe src/KumikoInverse-Bold.sfd

fontmake                                           \
    --output         variable                      \
    --output-path    otf/KumikoInverse-VF.otf      \
    --mm-designspace src/KumikoInverse.designspace \
    --keep-overlaps

rm -rf src/KumikoInverse-Thin.ufo
rm -rf src/KumikoInverse-Regular.ufo
rm -rf src/KumikoInverse-Bold.ufo
