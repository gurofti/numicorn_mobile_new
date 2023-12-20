import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class CustomWillPopScope extends StatelessWidget {
  const CustomWillPopScope(
      {required this.child,
      this.onWillPop = false,
      Key? key,
      required this.action})
      : super(key: key);

  final Widget child;
  final bool onWillPop;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? GestureDetector(
            onPanEnd: (details) {
              if (details.velocity.pixelsPerSecond.dx < 0 ||
                  details.velocity.pixelsPerSecond.dx > 0) {
                if (onWillPop) {
                  action();
                  Navigator.pop(context);
                }
              }
            },
            child: WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: child,
            ))
        : WillPopScope(
            child: child,
            onWillPop: () async {
              action();
              if (onWillPop) {
                Navigator.pop(context);
              }
              return onWillPop;
            });
  }
}
