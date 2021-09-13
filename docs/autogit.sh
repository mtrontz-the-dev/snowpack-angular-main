#!/usr/bin/env bash

# https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/
if [[ ! -f .git ]]
then
    echo ".git does not exist on your filesystem."
    echo "Running Command <git init> now."
    git init
    wait 
    if [[ ! -f .git ]]
    then
        echo "There seems to be an issue running <git init>. Please do so manually and then run this script again. Thank you." 
        exit
    else    
        echo ".git confirmed"
    fi    
else
    echo ".git confirmed"
 fi