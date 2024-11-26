# forcefully run tests since make skips tests if there is no change to test dir
.PHONY: all test clean

fmt:
	dart format .

test:
	dart test

gen:
	dart run build_runner build