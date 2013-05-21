#!/bin/bash
VC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

# remove all currently existing bundles
rm -rf ${VC_HOME}/vim/bundle/*
