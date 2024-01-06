import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';

Widget buildHeader(
  BuildContext context, {
  required String header,
  bool? closeWidget,
  Function? closeClick,
  Widget? rightWidget,
}) {
  return Stack(
    children: [
      rightWidget ??
          Positioned(
            right: 0,
            bottom: 0,
            top: 0,
            child: GestureDetector(
              onTap: () {
                if (closeClick == null) {
                  Navigator.pop(context);
                } else {
                  closeClick();
                }
              },
              child: const Icon(
                Icons.close,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
      Container(
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
      ),
    ],
  );
}
