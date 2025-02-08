#!/usr/bin/env nu

let pwd = pwd

try {
	git rev-parse
} catch {
	exit 1
}

if $pwd == $env.HOME {
	exit 1
}
exit 0
