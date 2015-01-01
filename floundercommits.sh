#!/bin/bash

# This should automatically cherry pick the commits needed (so far) to build flounder

# memchr

cd bionic
git fetch https://github.com/DirtyUnicorns/android_bionic.git
git cherry-pick 1cbfd7abee7cbbf0132ee8ee6190bd6e2f17ee21
cd ..
cd frameworks/base
git fetch https://github.com/joshuabg/frameworks_base.git
git cherry-pick 1a5f913740e60115f506b44bdc43ee5c139a6dce
cd ../..
