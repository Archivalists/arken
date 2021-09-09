#!/bin/bash

set -x
assets=()
for asset in ./ark-*; do
    assets+=("-a" "$asset")
done
tag_name="${GITHUB_REF##*/}"
hub release create "${assets[@]}" -m "$tag_name" "$tag_name"