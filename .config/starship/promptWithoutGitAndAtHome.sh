#!/bin/bash
if [ "$(pwd)" = "$HOME" ]; then
	exit 0
else 
	exit 1
fi