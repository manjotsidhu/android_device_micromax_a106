#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/micromax/a106/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/micromax/a106/patches/earlysuspend.patch
cd ../..
cd bionic
patch -p1 < ../device/micromax/a106/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..

