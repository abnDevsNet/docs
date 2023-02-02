#!/usr/bin/env sh

export NODE_OPTIONS=--openssl-legacy-provider

set -e

yarn build

cd src/.vuepress/dist

git init
git add -A
git commit -m 'New Deployment'

git push -f git@github.com:abndevs/abndevs.github.io.git main

cd -
