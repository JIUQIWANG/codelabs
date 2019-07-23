#!/usr/bin/env sh
export PATH="./node_modules/.bin/:$PATH"

# abort on errors
set -e

# build
gulp build

# copy codelabs folder to build
rm -r build/codelabs
cp -r codelabs/ build/codelabs

# navigate into the build output directory
cd ./build

# redirect CNAME
echo 'codelabs.iotexconnect.io' > CNAME

git init
git add -A
git commit -m 'Deploy files'

# push files
 git push -f git@github.com:iotexproject/codelabs.git master:gh-pages

# cd -
