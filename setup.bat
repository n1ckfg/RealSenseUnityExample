@echo off

git submodule init
git submodule update --init --recursive
git submodule sync
git submodule foreach git checkout master
git submodule foreach git reset --hard
git submodule foreach git pull origin master

cd Assets\RealSenseSDK2.0
git checkout unity-2019-lts
cd ..\..

@pause