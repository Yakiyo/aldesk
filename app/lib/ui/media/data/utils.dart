/// Sanitizes markdown text returned from Anilist, replacing html tags with
/// markdown syntax. (as much as possible)
String sanitizeMd(String? md, [bool allowSpoiler = false]) {
  if (md == null) return "";
  // if spoilers are allowed, just remove the `~!` and `!~` tags
  // otherwise replace the contained text with a spoiler warning
  final (from, to) =
      allowSpoiler ? (r'(~!|!~)', '') : (r'~!(.|\n)*!~', '**SPOILER**');

  final sanitized = md
      // replace italic starting (with or without trailing space)
      .replaceAll(RegExp(r'<i>\s?'), "_")
      // replace italic ending
      .replaceAll(RegExp(r'<\/i>'), "_")
      // replace line breaks
      .replaceAll(RegExp(r'<\/?br>'), "\n")
      // replace <b> and </b> with markdown bold syntax
      .replaceAll(RegExp(r'<\/?b>'), "**")
      // replace spoilers
      .replaceAll(RegExp(from), to);

  return sanitized;
}

String monthFromInt(int num) {
  if (num < 1 || num > 12) {
    return "N/A";
  }
  final str = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ][num - 1];
  if (str.length > 5) {
    // shortens the longer names
    return str.substring(0, 3);
  }
  // for march to july
  return str;
}
