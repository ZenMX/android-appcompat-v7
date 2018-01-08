#! /bin/bash

rm -rf ./build/replace

mkdir -p ./build/replace

unzip ./appcompat-v7-25.4.0.aar -d ./build/replace/appcompat-v7-25.4.0.aar.out/
unzip ./build/replace/appcompat-v7-25.4.0.aar.out/classes.jar -d ./build/replace/appcompat-v7-25.4.0.aar.jar.out/

unzip ./build/outputs/aar/appcompat-v7-release.aar -d ./build/replace/appcompat-v7-release.aar.out/
unzip ./build/replace/appcompat-v7-release.aar.out/classes.jar -d ./build/replace/appcompat-v7-release.aar.jar.out/

rm ./build/replace/appcompat-v7-25.4.0.aar.jar.out/android/support/v7/widget/MenuPopupWindow.class
rm ./build/replace/appcompat-v7-25.4.0.aar.jar.out/android/support/v7/widget/MenuPopupWindow\$MenuDropDownListView.class

cp -f ./build/replace/appcompat-v7-release.aar.jar.out/android/support/v7/widget/MenuPopupWindow.class ./build/replace/appcompat-v7-25.4.0.aar.jar.out/android/support/v7/widget/MenuPopupWindow.class
cp -f ./build/replace/appcompat-v7-release.aar.jar.out/android/support/v7/widget/MenuPopupWindow\$MenuDropDownListView.class ./build/replace/appcompat-v7-25.4.0.aar.jar.out/android/support/v7/widget/MenuPopupWindow\$MenuDropDownListView.class

cd ./build/replace/appcompat-v7-25.4.0.aar.jar.out

zip -r ../appcompat-v7-25.4.0.aar.jar ./*

cd ..

cp -f ./appcompat-v7-25.4.0.aar.jar ./appcompat-v7-25.4.0.aar.out/classes.jar

cd ./appcompat-v7-25.4.0.aar.out/

zip -r ../appcompat-v7-25.4.0.aar ./*
