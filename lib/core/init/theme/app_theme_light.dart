import 'package:flutter/material.dart';

import '../../constants/app/app_constants.dart';
import 'app_theme.dart';
import 'light/light_theme_interface.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        fontFamily: ApplicationConstants.FONT_FAMILY,
        textTheme:
            const TextTheme(bodyText2: TextStyle(color: Color(0xff000000))),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              color: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Color.fromARGB(255, 0, 0, 0),
                size: 21,
              ),
            ),
        // scaffoldBackgroundColor: Color(
        //   0xfff81E896,
        // ),
        indicatorColor: Color(
          0xfff81E896,
        ),
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              colorScheme: ColorScheme.light(
                onError: Color(0xff81E896),
              ),
            ),
      );

  // TabBarTheme get tabBarTheme {
  //   return TabBarTheme(
  //     labelPadding: insets.lowPaddingAll,
  //     labelColor: _appColorScheme.onSecondary,
  //     labelStyle: textThemeLight!.headline5,
  //     unselectedLabelColor: _appColorScheme.onSecondary.withOpacity(0.2),
  //     // unselectedLabelStyle: textThemeLight.headline4.copyWith(color: colorSchemeLight.red),
  //   );
  // }

  // TextTheme textTheme() {
  //   return ThemeData.light().textTheme.copyWith(
  //       headline1: textThemeLight!.headline1,
  //       headline2: textThemeLight!.headline2,
  //       overline: textThemeLight!.headline3);
  // }

  // ColorScheme get _appColorScheme {
  //   return ColorScheme(
  //       primaryVariant: Colors.white, //xx
  //       secondary: Colors.green,
  //       surface: Colors.blue, //xx
  //       background: Color(0xfff6f9fc), //xx
  //       error: Colors.red[900]!,
  //       onPrimary: Colors.greenAccent,
  //       onSecondary: Colors.black, //x
  //       onSurface: Colors.purple.shade300,
  //       onBackground: Colors.black12,
  //       onError: Color(0xFFF9B916), //xx
  //       brightness: Brightness.light,
  //       primary: null,
  //       secondaryVariant: null);
  // }
}
