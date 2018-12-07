#! /bin/bash

rm -rf ./build/replace

mkdir -p ./build/replace

COMPAT_VERSION=27.0.0

unzip ./appcompat-v7-${COMPAT_VERSION}.aar -d ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.out/
unzip ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.out/classes.jar -d ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.jar.out/

unzip ./build/outputs/aar/appcompat-v7-release.aar -d ./build/replace/appcompat-v7-release.aar.out/
unzip ./build/replace/appcompat-v7-release.aar.out/classes.jar -d ./build/replace/appcompat-v7-release.aar.jar.out/

rm ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.jar.out/android/support/v7/widget/MenuPopupWindow.class
rm ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.jar.out/android/support/v7/widget/MenuPopupWindow\$MenuDropDownListView.class

cp -f ./build/replace/appcompat-v7-release.aar.jar.out/android/support/v7/widget/MenuPopupWindow.class ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.jar.out/android/support/v7/widget/MenuPopupWindow.class
cp -f ./build/replace/appcompat-v7-release.aar.jar.out/android/support/v7/widget/MenuPopupWindow\$MenuDropDownListView.class ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.jar.out/android/support/v7/widget/MenuPopupWindow\$MenuDropDownListView.class

cd ./build/replace/appcompat-v7-${COMPAT_VERSION}.aar.jar.out

zip -r ../appcompat-v7-${COMPAT_VERSION}.aar.jar ./*

cd ..

cp -f ./appcompat-v7-${COMPAT_VERSION}.aar.jar ./appcompat-v7-${COMPAT_VERSION}.aar.out/classes.jar

cd ./appcompat-v7-${COMPAT_VERSION}.aar.out/

zip -r ../appcompat-v7-${COMPAT_VERSION}.aar ./*
