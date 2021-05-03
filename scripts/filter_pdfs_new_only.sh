#!/bin/bash

cd pdfs

git fetch origin ${{ github.event.before }} --depth=1
export DIFF=$( git diff --name-only ${{ github.event.before }} $GITHUB_SHA )
echo "Diff between ${{ github.event.before }} and $GITHUB_SHA"
