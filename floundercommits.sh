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

# umm
#cd external/ffmpeg
#git fetch http://review.cyanogenmod.org/CyanogenMod/android_external_ffmpeg refs/changes/35/82835/2 && git cherry-pick FETCH_HEAD
#git fetch https://github.com/joshuabg/android_external_ffmpeg.git
#git cherry-pick a8edb2d0fef655deec90bc9c9e51b738973a20e7
#git cherry-pick f3af1e5b87e1d6908096ad54c03cd90f3ceea40f
#cd ../..

