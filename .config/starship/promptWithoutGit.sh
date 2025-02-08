#!/bin/bash
git rev-parse
if [ "$?" = 0 ] || [ "$(pwd)" = "$HOME" ]; then
	exit 1
else
	exit 0
fi