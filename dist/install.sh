#!/bin/bash

BP_CURR_DIR=$PWD
mkdir -p c:/bpmtemp && cd $_
git clone git@github.com:robsonrosa/bash-profile.git
cp -R c:/bpmtemp/bash-profile/dist/. ~/
rm -rf c:/bpmtemp
cd $BP_CURR_DIR
clear
source ~/.bash_profile
echo 'Everything is up to date and your current context is [base]'