/// Sanitizes markdown text returned from Anilist, replacing html tags with
/// markdown syntax. (as much as possible)
String sanitizeMd(String? md, [bool allowSpoiler = false]) {
  if (md == null) return "";
  var sanitized = md
      // replace italic starting (with or without trailing space)
      .replaceAll(RegExp(r'<i>\s?'), "_")
      // replace italic ending
      .replaceAll(RegExp(r'<\/i>'), "_")
      // replace line breaks
      .replaceAll(RegExp(r'<\/?br>'), "\n");

  if (!allowSpoiler) {
    // replace spoilers with a text representation
    sanitized = sanitized.replaceAll(RegExp(r'~!(.|\n)*!~'), "**SPOILER**");
  }

  return sanitized;
}
