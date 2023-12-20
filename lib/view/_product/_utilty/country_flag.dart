class CountryFlagHelper {
  static String findCodeById(int id) {
    List<FlagItem> countries = [
      FlagItem(id: 1, code: "tr"),
      FlagItem(id: 2, code: "en"),
      FlagItem(id: 3, code: "de"),
      FlagItem(id: 4, code: "fr"),
      FlagItem(id: 5, code: "es"),
    ];
    String code = countries.firstWhere((element) => element.id == id).code;
    print("code: " + code);
    return code;
  }
}

class FlagItem {
  int id;
  String code;

  FlagItem({
    required this.id,
    required this.code,
  });
}
