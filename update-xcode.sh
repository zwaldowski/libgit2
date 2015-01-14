#!/bin/sh

export MACOSX_DEPLOYMENT_TARGET=10.8  # Must match GitUp
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig" # Only for building this repo, GitUp will use its own versions

rm -rf "xcode"
mkdir "xcode"
cd "xcode"
cmake -G "Xcode" -DBUILD_SHARED_LIBS:BOOL=OFF -DTHREADSAFE:BOOL=ON -DSHA1_BACKEND:STRING=CommonCrypto -DCMAKE_OSX_DEPLOYMENT_TARGET:STRING=$MACOSX_DEPLOYMENT_TARGET ..
open "libgit2.xcodeproj"
