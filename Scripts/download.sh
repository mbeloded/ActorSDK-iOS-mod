#!/bin/bash
set -ev

#sdk_version=$(cat Scripts/SDK_VER)
#sha1_checksum=$(cat Scripts/SDK_SHA)

rm -fr Frameworks/ActorSDK.framework

echo "fetching ActorSDK.framework"
curl -OL https://bitbucket.org/mbeloded/appcoremodified/src/5176ef550aef788f68b7c37bb2b9c084c0876f05/ActorSDK.zip?at=master

#echo "${sha1_checksum}  ActorSDK.zip" | shasum -c

unzip -o -q ActorSDK.zip
mv ActorSDK.framework Frameworks
mv ActorSDK.framework.dSYM Frameworks
rm ActorSDK.zip
