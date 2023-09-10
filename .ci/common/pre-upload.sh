#!/bin/bash -ex

git config --global --add safe.directory /__w/threeSD/threeSD

GITDATE="`git show -s --date=short --format='%ad' | sed 's/-//g'`"
GITREV="`git show -s --format='%h'`"
if [[ $GITHUB_REF == refs/tags/* ]]; then
    GITNAME="${GITHUB_REF:10}"
else
    GITNAME="${GITDATE}-${GITREV}"
fi

mkdir -p artifacts
