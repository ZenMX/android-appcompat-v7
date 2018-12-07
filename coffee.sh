#! /bin/bash

export SUPPORT_VERSION_GLOBAL="27.1.1"

echo "build"
./gradlew appcompat-build:assembleRelease

echo "replace"
./gradlew appcompat:replaceAndBuild

echo "publish"
./gradlew appcompat:publishMavenReleasePublicationToReleaseRepository
