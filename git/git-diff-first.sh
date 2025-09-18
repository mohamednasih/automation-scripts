#! /bin/bash
path=$1
if [ $# -eq 0 ];then
	path="."	
fi

git diff  $(git diff --name-only  "$path"| head -n 1)
