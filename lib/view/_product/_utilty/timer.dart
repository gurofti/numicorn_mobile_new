String findLastSecond(int secondsElapsed) {
  int minutes = secondsElapsed ~/ 60;
  int seconds = secondsElapsed % 60;

  String formattedTime =
      '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  return formattedTime;
}
