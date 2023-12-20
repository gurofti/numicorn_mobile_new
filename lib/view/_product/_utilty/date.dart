class Now {
  String day() {
    // Şu anki tarihi al
    DateTime today = DateTime.now();

    // Ayın kaçıncı günü olduğunu al
    int dayOfMonth = today.day;
    return dayOfMonth.toString();
  }
}
