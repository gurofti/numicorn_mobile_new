import 'dart:async';

import 'package:flutter/material.dart';

import 'INavigationService.dart';

class NavigationService implements INavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final removeAllOldRoutes = (Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage({String? path, dynamic data}) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({String? path, Object? data}) async {
    Timer(
      const Duration(milliseconds: 300),
      () {
        navigatorKey.currentState!.pushNamedAndRemoveUntil(
            path!, removeAllOldRoutes,
            arguments: data);
      },
    );
  }
}
