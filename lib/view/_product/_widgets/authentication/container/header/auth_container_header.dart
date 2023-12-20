import 'package:flutter/material.dart';

class AuthContainerHeader extends StatelessWidget {
  AuthContainerHeader({Key? key, required this.header}) : super(key: key);
  String header;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: const TextStyle(
        fontFamily: 'PoppinsMedium',
        fontSize: 18,
      ),
    );
  }
}
