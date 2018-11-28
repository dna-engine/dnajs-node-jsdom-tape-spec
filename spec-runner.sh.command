#!/bin/bash
##############################
# dnajs-node-jsdom-tape-spec #
##############################

# To make this file runnable:
#     $ chmod +x *.sh.command

banner="dnajs-node-jsdom-tape-spec"
projectHome=$(cd $(dirname $0); pwd)

setupTools() {
   cd $projectHome
   echo
   echo $banner
   echo $(echo $banner | sed s/./=/g)
   pwd
   echo
   echo "Node.js:"
   which node || { echo "Need to install Node.js: https://nodejs.org"; exit; }
   node --version
   npm install
   npm update --no-save
   npm outdated
   echo
   }

runSpecs() {
   cd $projectHome
   echo "Specifications:"
   npm test
   echo
   }

setupTools
runSpecs
