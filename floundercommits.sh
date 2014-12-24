#!/bin/bash

# This should automatically cherry pick the commits needed (so far) to build flounder

# memchr

cd bionic
git fetch https://github.com/DirtyUnicorns/android_bionic.git
git cherry-pick 1cbfd7abee7cbbf0132ee8ee6190bd6e2f17ee21
cd ..

# signal.h
cd system/core
git fetch http://gerrit.aicp-rom.com/AICP/system_core refs/changes/82/6282/1 && git cherry-pick FETCH_HEAD
cd ../..
cd external/iproute2
git fetch https://github.com/joshuabg/android_external_iproute2.git
git cherry-pick 478ce3e5c57e11433b64b1dafdb8ea437fd69143
cd ../..
