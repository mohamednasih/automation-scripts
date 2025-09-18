#! /bin/bash
file_name="$(git diff --name-only | head -n 1)"
git restore  "$file_name" && echo git restore  "$file_name" || echo failed

