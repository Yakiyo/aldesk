dev:
	cd app && flutter run

gen:
	cd app && dart run build_runner build --delete-conflicting-outputs

gql:
	cd packages/anilist && dart run build_runner build --delete-conflicting-outputs

icon:
	cd app && dart run flutter_launcher_icons

export:
	cd packages/anilist && dart run scripts.dart exports

fmt:
	dart format .