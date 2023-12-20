import 'package:flutter/material.dart';

class AuthContainerSecondTitle extends StatelessWidget {
  AuthContainerSecondTitle({Key? key, required this.header}) : super(key: key);
  String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        header,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
