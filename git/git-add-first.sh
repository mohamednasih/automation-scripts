#! /bin/bash
[ $# -eq 1 ] && path="$1" || path="."
name=$(git diff --name-only "$path" | head -n 1)
git add "$name"
echo "git add $name" || echo failed

