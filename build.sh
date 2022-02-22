#! /usr/bin/env bash

set -e
set -o pipefail
shopt -s globstar

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
	cat << EOF
build.sh - Create the Datapack .zip file
Usage: ${BASH_SOURCE[0]} [options]

The goal of this script is to create the zipped datapack.
By default it creates a minified version of the file, by minifying each
individual file in the datapack.

Options:
 -h, --help        display this help and exit
     --dev         don't minimize the contents of the .zip file and append
                   "DEV" before the file extention
EOF
	exit
elif [[ "$1" == "--dev" ]]; then
	# Empty string as test condition is false
	optimize=""
	result_file="Castle Wall Builder DEV.zip"
else
	optimize=1
	result_file="Castle Wall Builder.zip"
fi

# Ensure we're working relative to the script
cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

# Cleanup the last build if it still exists. The folder will be recreated in the loop
rm -rf build "$result_file"

for source_file in datapack/**; do
	target_file="${source_file/datapack/build}"

	if [[ -d "$source_file" ]]; then
		mkdir "$target_file"
	elif [[ "$optimize" && "$source_file" =~ .*\.mcfunction$ ]]; then
		sed -E '/^(\s*$|#)/d' "$source_file" > "$target_file"
	elif [[ "$optimize" && "$source_file" =~ .*\.(json|mcmeta)$ ]]; then
		jq -cj . "$source_file" > "$target_file"
	else
		cp "$source_file" "$target_file"
	fi
done

cd build
zip -9r "../$result_file" .
