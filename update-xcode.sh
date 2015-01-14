#!/bin/sh

rm -rf "xcode"
mkdir "xcode"
cd "xcode"
cmake -G "Xcode" ..
open "libgit2.xcodeproj"
