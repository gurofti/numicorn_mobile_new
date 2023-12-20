import 'package:flutter/material.dart';

class AuthContainer extends StatelessWidget {
  AuthContainer({Key? key, required this.child}) : super(key: key);
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 35,
      ),
      child: child,
    );
  }
}
