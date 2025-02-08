#!/usr/bin/env nu

# let isAtHome = pwd | path relative-to C: | str contains test #for windows
let isAtHome = pwd | path relative-to C: | str contains nissya
try {
	git rev-parse
} catch {
	exit 1
}
