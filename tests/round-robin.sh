#!/bin/sh

set -eu

error() {
	echo "ERROR: $*" >&2
	exit 1
}

[ -x ./pbr ] || error "run this from project root"

PBR_INDEX_FILE="$(mktemp)"
export PBR_INDEX_FILE

for i in $(seq 10); do
	sleep 1 # be nice
	date +%s | ./pbr
done
