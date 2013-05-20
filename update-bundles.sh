#!/bin/bash
VC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# remove all currently existing bundles
rm -rf ${VC_HOME}/vim/bundle/*

# install bundles
while read bundle
do
  bundles+=("$bundle")
done < ${VC_HOME}/bundles.cfg

## cd into bundles directory to preserve git repo name
cd ${VC_HOME}/vim/bundle
for i in ${bundles[@]}; do
  git clone $i
done
cd ${VC_HOME}
