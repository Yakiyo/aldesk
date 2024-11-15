Map<String, int> secondsToTime(int seconds) {
  final duration = Duration(seconds: seconds);
  return {
    "d": duration.inDays,
    "h": duration.inHours - duration.inDays * 24,
    "m": duration.inMinutes - duration.inHours * 60,
  };
}