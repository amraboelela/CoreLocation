#!/bin/bash

./build
PARAM=x$1

if [ $PARAM != "x" ]; then
    git commit -a -m $1
fi

git pull
git tag -f 1.0.0
git push -f --tags
git push
