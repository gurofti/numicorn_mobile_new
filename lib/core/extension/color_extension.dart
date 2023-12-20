import 'dart:io';

import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/_product/_utilty/service_helper.dart';

extension ColorExtension on BuildContext {
  Color get appColor => const Color(0xff6562F6);
  Color get appColorPassive => Color.fromARGB(255, 163, 162, 241);
  Color get appColorPink => const Color(0xffff699e);
  Color get appColorLight => const Color(0xffedecfa);
  Color get appColorYellow => const Color(0xffffda53);
  Color get appColorYellow100 => const Color(0xffffcc02);
  Color get appColorYellow200 => const Color(0xffEAC155);
  Color get appColor100 => const Color(0xff060553);
  Color get appColor200 => const Color(0xff0A0883);
  Color get appColor300 => const Color(0xff6562F6);
  Color get appColor400 => const Color(0xff6562F6);
  Color get appColor500 => const Color(0xff9592F9);
  Color get appColor600 => const Color(0xff3632F2);
  Color get appColor700 => const Color(0xff170DE5);
  Color get appColor800 => const Color(0xff0F0BB5);
  Color get appColor900 => const Color(0xff0A0883);
  Color get appColor1000 => const Color(0xff060553);

  Color get appColorGreen => const Color(0xff8EE000);
  Color get appColorGreen100 => const Color(0xff78C800);
  Color get appButtonGreen100 => Color(0xFF4CAF50);
  Color get appButtonBorderGreen100 => Color(0xFF1D8420);

  Color get appDiamond => const Color(0xff0196DC);

  Color get appBorderColor100 => const Color(0xff4B4B4B);
  Color get appBorderColor200 => const Color(0xff777777);
  Color get appBorderColor300 => const Color(0xffAFAFAF);
  Color get appBorderColor400 => const Color(0xffE5E5E5);
  Color get appBorderColor500 => const Color(0xffF7F7F7);
  Color get appBorderColor600 => const Color(0xffFFFFFF);

  Color get appColorRed => const Color(0xffF51E0A);
  Color get appColorRed100 => Color(0xFFF71404);
  Color get appColorGray => const Color(0xffE5E5E5);
  Color get appColorGray100 => const Color(0xffEBEBEB);

  Color get appColorPink100 => const Color(0xfff786af);
  Color get appColorPink500 => const Color(0xfff03c80);

  Color get appColorOrange1000 => Color(0xFFC47001);
  Color get appColorOrange900 =>
      const Color(0xffFCBD11); // Color.fromARGB(255, 249, 153, 28);
  Color get appColorOrange800 => const Color(0xffFFCC01);
  Color get appWhiteColor => const Color(0xffFFFFFF);

  Color get secondColor => const Color(0xff717171);
}

extension ColorBuildContext on ServiceHelper {
  get primaryGreen_500 => const Color(0xFF155724);
  get primaryPink_300 => const Color(0xFF721c24);
  get primaryGreen_400 => const Color(0xFFD4EDDA);
  get primaryPink_200 => const Color(0xFFF8D7DA);
  get appColor => const Color(0xff6562F6);

  double get serviceSnackbarText => Platform.isAndroid ? 14.0 : 16.0;
}
