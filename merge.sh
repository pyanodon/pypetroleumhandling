#!/bin/bash

# friendly name used in commit messages
tn="coalbed"
# branch name suffix
bn="coalbed-merge"
# output file path, mk01-mk04 should be the same thing with the mk suffix
fn="./prototypes/buildings/coalbed"
# extension
ext=".lua"

# first make a new branch and switch
git switch 2.1_prep
git checkout -b "$bn-output"

git checkout -b "$bn-1"
git mv "$fn-mk01$ext" "$fn$ext"
git commit -m "merge $tn: mk01"
git checkout -

git checkout -b "$bn-2"
git mv "$fn-mk02$ext" "$fn$ext"
git commit -m "merge $tn: mk02"
git checkout -

git checkout -b "$bn-3"
git mv "$fn-mk03$ext" "$fn$ext"
git commit -m "merge $tn: mk03"
git checkout -

git checkout -b "$bn-4"
git mv "$fn-mk04$ext" "$fn$ext"
git commit -m "merge $tn: mk04"
git checkout -

cat "$fn-mk01$ext" "$fn-mk02$ext" "$fn-mk03$ext" "$fn-mk04$ext" >"$fn$ext"
git rm "$fn-mk01$ext" "$fn-mk02$ext" "$fn-mk03$ext" "$fn-mk04$ext"
git add "$fn$ext"

# we're just assuming this is gonna work lol, stdout only
tree_hash=$(git write-tree)

# same here
commit_hash=$(git commit-tree "$tree_hash" -p HEAD -p "$bn-1" -p "$bn-2" -p "$bn-3" -p "$bn-4" -m "combine $tn mk01-mk04")

git merge --ff-only "$commit_hash"

gh pr create --title "Merge $tn into a single file" --body "Preserves blame history, do not squash when merging"

