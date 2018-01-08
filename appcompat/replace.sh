#! /bin/bash

rm -rf ./replace/replace

mkdir -p ./replace/replace

unzip ./appcompat-v7-25.4.0.aar -d ./replace/replace/appcompat-v7-25.4.0.aar.out/
unzip ./replace/replace/appcompat-v7-25.4.0.aar.out/classes.jar -d ./replace/replace/appcompat-v7-25.4.0.aar.jar.out/

unzip ./build/outputs/aar/appcompat-v7-release.aar -d ./replace/replace/appcompat-v7-release.aar.out/
unzip ./replace/replace/appcompat-v7-release.aar.out/classes.jar -d ./replace/replace/appcompat-v7-release.aar.jar.out/

cp -f ./replace/replace/appcompat-v7-release.aar.jar.out/android/support/v7/widget/MenuPopupWindow.class ./replace/replace/appcompat-v7-25.4.0.aar.jar.out/android/support/v7/widget/

cd ./replace/replace/appcompat-v7-25.4.0.aar.jar.out

zip -r ../appcompat-v7-25.4.0.aar.jar ./*

cd ..

cp -f ./appcompat-v7-25.4.0.aar.jar ./appcompat-v7-25.4.0.aar.out/classes.jar

cd ./appcompat-v7-25.4.0.aar.out/

zip -r ../appcompat-v7-25.4.0.aar ./*
