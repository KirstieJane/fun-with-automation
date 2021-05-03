#!/bin/bash

cd pdfs

git fetch origin --depth=2
export DIFF=$( git diff --name-only HEAD~1 HEAD )
#export DIFF=$( git diff --name-only ${{ github.event.before }} $GITHUB_SHA )
echo ${DIFF[@]}