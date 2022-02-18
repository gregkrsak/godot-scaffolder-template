#!/usr/bin/env bash
declare -x BRANCH=$(../../_show-submodule-branch.sh)
echo "Remote default branch is '${BRANCH}'..."
git branch -u origin/${BRANCH} ${BRANCH}
git checkout ${BRANCH}
