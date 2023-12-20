class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance => _instance ??= ImageConstants._init();

  ImageConstants._init();

  String get logo => toPng('veli');

  String get hotDog => toPng('hotdogs');
  String get educationLogin => toPng('education_login');

  String toPng(String name) => 'asset/image/$name.png';
}
