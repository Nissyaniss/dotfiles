#!/usr/bin/env nu

# let isAtHome = pwd | path relative-to C: | str contains test for windows
let isAtHome = pwd | path relative-to C: | str contains nissya
try {
	git rev-parse
} catch {
	if $env.LAST_EXIT_CODE != 0 and $isAtHome == false {
		exit 0
	} else {
		exit 1
	}
}

exit 1
