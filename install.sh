#!/bin/bash

BP_CURR_DIR=$PWD
mkdir -p ${target} && cd $_
git clone ${repository}
cp -R ${target}/bash-profile/dist/. ~/
rm -rf ${target}
cd $BP_CURR_DIR
clear
source ~/.bash_profile
echo 'Everything is up to date and your current context is [base]'