#!/usr/bin/env bash

# https://github.com/googlefonts/fontmake/issues/379
# https://reproducible-builds.org/docs/source-date-epoch/#git
export SOURCE_DATE_EPOCH=$(git log -1 --pretty=%ct)

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

fontforge -script fontforge-convert.pe src/KumikoPunch-Thin.sfd
fontforge -script fontforge-convert.pe src/KumikoPunch-Regular.sfd
fontforge -script fontforge-convert.pe src/KumikoPunch-Bold.sfd

fontmake                                         \
    --output         variable-cff2               \
    --output-path    build/KumikoPunch.otf       \
    --mm-designspace src/KumikoPunch.designspace \
    --keep-overlaps

rm -rf src/KumikoPunch-Thin.ufo
rm -rf src/KumikoPunch-Regular.ufo
rm -rf src/KumikoPunch-Bold.ufo

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

rm -f build/KumikoPunch.zip

zip                       \
    -X --junk-paths       \
    build/KumikoPunch.zip \
    build/KumikoPunch.otf \
    OFL.txt               \
    README.md

ziptime build/KumikoPunch.zip
