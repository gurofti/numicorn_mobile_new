String formatTimeAgo(String timestamp) {
  // Gelen tarihi DateTime objesine çevir
  DateTime date = DateTime.parse(timestamp);

  // Şu anki zaman
  DateTime now = DateTime.now();

  // Geçen süreyi hesapla
  Duration difference = now.difference(date);

  if (difference.inDays > 0) {
    // Bir gün veya daha fazla
    return '${difference.inDays} gün önce';
  } else if (difference.inHours > 0) {
    // Bir saat veya daha fazla
    return '${difference.inHours} saat önce';
  } else if (difference.inMinutes > 0) {
    // Bir dakika veya daha fazla
    return '${difference.inMinutes} dakika önce';
  } else {
    // Az önce
    return 'az önce';
  }
}
