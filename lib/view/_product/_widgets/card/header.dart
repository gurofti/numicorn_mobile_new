import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';

Widget buildHeader(BuildContext context, {required String header}) {
  return Container(
    child: Center(
      child: Text(
        header,
        style: TextStyle(
          fontFamily: context.fontFamily600,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}
