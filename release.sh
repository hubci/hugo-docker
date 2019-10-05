#!/usr/bin/env bash

versions=( "$@" )

sortedVersions=( $(
	for version in "${versions[@]}"; do
		echo "$version"
	done | sort --reverse) )


for i in "${!sortedVersions[@]}"; do

	version=${sortedVersions[$i]}

	git checkout -b hugo-v${version}
	./gen-dockerfiles.sh ${version}
	git add .
	git commit -m "Add Hugo v${version} [release]."
	git push -u origin hugo-v${version}
done
