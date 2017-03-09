#!/bin/sh

# SCRIPT FOR INSTRUCTORS TO UPDATE THE OVERLEAF
# must commit changes of the github repo first

# add overleaf as a remote to the repo
git remote add overleaf https://git.overleaf.com/7857286dnrjvpkjbnph
# check that the remote is added
git remote -v
# fetch overleaf
git fetch overleaf
# merge with github repo
git merge overleaf/master
# RESOLVE conflict if there are some
# push changes to both remotes
git push overleaf master
git push origin master

