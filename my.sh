#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <wildcard_pattern>"
    exit 1
fi

pattern="$1"

search_files() {
    local current_dir="$1"
    local pattern="$2"
    
    cd "$current_dir" || exit
    
    for item in $pattern; do
        if [ -e "$item" ]; then
            full_path="$(pwd)/$item"
            echo "$full_path"
        fi
    done
    
    for dir in */; do
        if [ -d "$dir" ]; then
            (search_files "$(pwd)/$dir" "$pattern")
        fi
    done
}

search_files "$(pwd)" "$pattern"
