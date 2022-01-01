extension DurationExt on Duration {
  String getDigitalClock() =>
      '$inMinutes:${(inSeconds % 60).toString().padLeft(2, '0')}';
}
