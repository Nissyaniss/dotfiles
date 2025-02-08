#!/usr/bin/env nu

try {
	git rev-parse
} catch {
	exit 1
}
