import 'package:flutter/material.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

// ignore: must_be_immutable
class SuperHeader extends StatelessWidget {
  SuperHeader({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            width: context.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: context.fontFamily600,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontFamily: context.fontFamily600,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 12,
            top: 3,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
