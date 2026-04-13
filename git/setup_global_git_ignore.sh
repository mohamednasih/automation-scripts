#!/bin/bash

set -e

target="$HOME/.gitignore_global"

if [[ -f "$target" ]]; then
	backup="$target.bak.$(date +%Y%m%d%H%M%S)"
	cp "$target" "$backup"
	echo "Saved existing $target to $backup"
fi

cat << eof > ~/.gitignore_global

# IDE/Editor files
.vscode/
*.swp

# executable
*.out
eof

echo "Wrote new global git ignore file to $target"
