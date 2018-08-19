#!/bin/bash
set -e
for fd in ./*
do
	if [ -d $fd ]; then
		pushd $fd
		./setup.sh
		popd
	fi
done
