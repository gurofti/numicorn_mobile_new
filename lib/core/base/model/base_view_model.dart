import 'package:flutter/material.dart';
import '../../init/theme/light/color_scheme_light.dart';

import '../../init/cache/locale_manager.dart';
import '../../init/navigation/navigation_service.dart';

abstract class BaseViewModel {
  BuildContext? buildContext;

  LocaleManager localeManager = LocaleManager.instance;
  NavigationService navigation = NavigationService.instance;
  ColorSchemeLight? colorScheme = ColorSchemeLight.instance;

  void setContext(BuildContext buildContext);
  void init();
}
