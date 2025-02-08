#!/usr/bin/env nu

let isAtHome = pwd | str contains $env.HOME
try {
	git rev-parse
} catch {
	if $env.LAST_EXIT_CODE != 0 and $isAtHome == false {
		exit 0
	} 
}

exit 1
