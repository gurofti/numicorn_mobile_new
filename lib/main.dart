import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/app_constants.dart';
import 'core/init/lang/language_manager.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifer.dart';

void loadFont() async {
  var fontLoader = FontLoader("TimesNewRomanPSMT100");
  fontLoader
      .addFont(rootBundle.load('asset/fonts/TimesNewRomanPSMTRegular.ttf'));
  await fontLoader.load();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _init();
  runApp(MultiProvider(
    providers: [...ApplicationProvider.instance.dependItems],
    child: EasyLocalization(
      child: MyApp(),
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.LANG_ASSET_PATH,
      startLocale: LanguageManager.instance.trLocale,
    ),
  ));
}

Future<void> _init() async {
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    loadFont();
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,

      //context.watch<ThemeNotifier>().currentTheme,
      theme: context.watch<ThemeNotifier>().currentTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: NavigationRoute.intance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
