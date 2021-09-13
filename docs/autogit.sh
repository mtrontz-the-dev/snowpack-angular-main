#!/usr/bin/env bash

# ShellCheck: Static Script Analysis Tool
# https://github.com/koalaman/shellcheck/wiki

# Minimum Requirements List
requirements='{git-(Git), gh-(Github), repo-{Github Repo} }';
repo=''

# TODO
# Run a quick prescript check to confirm all the variables are
# available and configured correctly. 
# Example:
#
# Git CLI
# $ git
# $ if {error}
# $ echo "You don't even have git installed!"
# $ echo "Please make sure to have the minimum requirements before running this script!"
 $ echo "$requirements"
# 
# Github CLI
# $ gh
# $ if {error} 
# $ git clone path/to/github/cli.script && execute






# Confirm or Initialize Git
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

# Create a new Github Repo and push first commit
gh repo create "$repo" --confirm --public
# All options with some configs for $ gh repo {action} 
# Learn more: https://cli.github.com/manual/
# $ gh repo create [<name>] [flags]
# $ gh repo clone [<directory>] [-- <gitflags>...]
# $ gh repo fork [<repository>] [-- <gitflags>...] [flags]
# $ gh repo list [<owner>] [flags]
# $ gh repo sync [<destination-repository>] [flags]
# $ gh repo view [<repository>] [flags]

# Add file contents to the index
git add .
# https://git-scm.com/docs/git-add

# how-to-get-user-input-in-bash-shell-script
# https://www.linuxvasanth.com/how-to-get-user-input-in-bash-shell-script/
echo "Please provide a quick commit message"
read -r msg
# Record and submit changes to the repository
git commit -m "$msg"
wait 

if ! error  
then
    echo "Commit Successful!"
else 
    echo "An error occured during the commit. Please try again."
fi 
