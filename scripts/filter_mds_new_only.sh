#!/bin/bash

# Find the files that have changed since the last commit
export DIFF=$( git diff --name-only HEAD~1 HEAD )
#export DIFF=$( git diff --name-only ${{ github.event.before }} $GITHUB_SHA )
echo ${DIFF[@]}

# Make a temporary conversion directory
mkdir -p tmp_mds_to_convert

# Move the markdown files in DIFF to the new directory
for f in ${DIFF[@]}; do
  if [[ ${f} == *.md ]]; then
    basename_f=`basename ${f}`
    cp ${f} tmp_mds_to_convert/${basename_f}
  fi
done

echo `ls -lrt tmp_mds_to_convert`