import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instace;
  static ColorSchemeLight? get instance {
    if (_instace == null) _instace = ColorSchemeLight._init();
    return _instace;
  }

  ColorSchemeLight._init();
}
