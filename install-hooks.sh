#!/usr/bin/env sh

set -eux
SCRIPT_DIR="$(realpath $(dirname "$0"))"
echo "script dir is: $SCRIPT_DIR"


cd hooks
for f in $(find . -type f); do
    target_dir="/etc/libvirtd/hooks/${f%/*}"
    sudo mkdir -p "$target_dir"
    sudo cp "$f" "/etc/libvirtd/hooks"
done
