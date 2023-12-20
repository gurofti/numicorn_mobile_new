class NumberHelper {
  static String formatToDecimalString(int number) {
    String numberString = number.toString();
    int length = numberString.length;
    String formattedNumber = '';

    for (int i = 0; i < length; i++) {
      if ((length - i) % 3 == 0 && i != 0) {
        formattedNumber += '.';
      }
      formattedNumber += numberString[i];
    }

    return formattedNumber;
  }
}
