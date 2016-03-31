#!/bin/bash
set -ev

#sdk_version=$(cat Scripts/SDK_VER)
#sha1_checksum=$(cat Scripts/SDK_SHA)

rm -fr Frameworks/ActorSDK.framework

echo "fetching ActorSDK.framework"
curl -OL https://www.dropbox.com/s/6j56rbhle7kiqi4/ActorSDK.zip?dl=0

#echo "${sha1_checksum}  ActorSDK.zip" | shasum -c

unzip -o -q ActorSDK.zip
mv ActorSDK.framework Frameworks
mv ActorSDK.framework.dSYM Frameworks
rm ActorSDK.zip
