#!/usr/bin/env bash

# Shell-Format VSCode Extension
#
# supported file types or languages
#
# language	    extension	                describe
# shellscript	.sh .bash	                shell script files
# dockerfile	Dockerfile	                docker files
# ignore	    .gitignore .dockerignore	ignore files
# properties	.properties	                java properties files
# jvmoptions	.vmoptions , jvm.options	jvm options file
# hosts	         /etc/hosts	                hosts file


# Autocomplete Shell VSCode Extension
# Based on https://www.gnu.org/software/bash/manual/bash.html
#
# Basic Code Support
#
# if/elif/else
# echo/read
# for/while/until/break
# function
# case expr
# test int/string/file
# Bash variables and functions

echo Hello!

read -r -p "Please type the repo web address you wish to clone" name
echo "You requested to clone" "$name"

echo 'Setting Variables'

filename=$(echo "$name" | cut -c30-42)

echo 'Clone Script Starting...'

git clone "$name"

wait

echo 'Clone Complete'

cd "$filename" || exit

echo 'Changed Directory to ' "$filename"
echo 'Installing...'
npm install
wait 

exit 







