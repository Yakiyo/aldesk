fmt:
	dart format .

test:
	cd anilist && dart test

run:
	flutter run

gen:
	dart run build_runner build && cd anilist && dart run build_runner build