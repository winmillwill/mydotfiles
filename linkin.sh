#!/bin/bash

# loop over the files that start with a dot and make symlinks to them in $HOME

set -eu -o pipefail

pushd "$(dirname "$0")"
dir="${PWD}"
ignore=( .git .gitignore )
find_cmd=( find . -path ./.\* -maxdepth 1 )

for i in "${ignore[@]}"; do
    find_cmd=("${find_cmd[@]}" -not -path "./${i}")
done

for file in $("${find_cmd[@]}"); do
    f="$(basename "$file")"
    ln -sf "${dir}/${f}" "$HOME/$f"
done
