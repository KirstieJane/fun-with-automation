#!/bin/bash

cd pdfs

git fetch origin --depth=1
export DIFF=$( git diff --name-only HEAD~10 HEAD~5 )
#export DIFF=$( git diff --name-only ${{ github.event.before }} $GITHUB_SHA )
echo ${DIFF[@]}