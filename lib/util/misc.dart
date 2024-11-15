String secondsToTime(int seconds) {
  final duration = Duration(seconds: seconds);
  final t = {
    "d": duration.inDays,
    "h": duration.inHours - duration.inDays * 24,
    "m": duration.inMinutes - duration.inHours * 60,
  };
  var str = "";
  for (final key in t.keys.toList()) {
    str += "${t[key]}$key ";
  }
  return str;
}
