import 'dart:io';

void main(List<String> args) {
  switch (args[0]) {
    case 'exports':
      exportsCommand();
      break;
    default:
      print('Unknown command');
  }
}

void exportsCommand() async {
  final models = Directory("lib/src/models");
  final outputFile = File("lib/models.dart");

  if (await outputFile.exists()) {
    await outputFile.delete();
  }
  await outputFile.create(recursive: true);
  final files = await models.list(recursive: true).toList();
  await outputFile
      .writeAsString("// GENERATED FILE BY `scripts.dart`. DO NOT MODIFY\n\n");
  for (final file in files) {
    if (file is Directory) continue;
    final path = file.path.split(RegExp(r'\\|/')).skip(1).join("/");
    final content = "export '$path';\n";
    await outputFile.writeAsString(content, mode: FileMode.append);
  }
}
