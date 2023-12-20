import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class StepHeader extends StatelessWidget {
  StepHeader({
    Key? key,
    required String this.header,
    required String this.img,
  }) : super(key: key);
  final String header;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.height * 0.07),
          child: SvgPicture.asset(
            'asset/auth/' + img, //'asset/image/rocket_login.png',
            fit: BoxFit.cover,
            height: context.width * 0.25,
            width: context.width * 0.25,
          ),
        ),
        Text(
          header,
          style: TextStyle(
            fontFamily: context.fontFamily600,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
