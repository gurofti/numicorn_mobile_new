bool isEmail(String text) {
  // E-posta adresi kontrolü için basit bir düzenli ifade kullanalım
  final RegExp emailRegex = RegExp(
    r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$',
    caseSensitive: false,
  );

  return emailRegex.hasMatch(text);
}
