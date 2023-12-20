import 'package:flutter/material.dart';

class ButtonAltText extends StatelessWidget {
  ButtonAltText({Key? key, required this.text, required this.onTap})
      : super(key: key);
  String text;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(text),
      ),
    );
  }
}
