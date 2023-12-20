import 'package:flutter/material.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../../_product/_widgets/input/input_button.dart';

class PairingButton extends StatefulWidget {
  PairingButton({Key? key}) : super(key: key);

  @override
  State<PairingButton> createState() => _PairingButtonState();
}

class _PairingButtonState extends State<PairingButton> {
  @override
  Widget build(BuildContext context) {
    return InputButton(
      child: Container(
        width: context.width,
        height: context.height * 0.17,
        alignment: Alignment.center,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Text(
          '12 + 3',
          style: TextStyle(
            fontSize: 24,
            fontFamily: context.fontFamily600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      size: 20,
      color: context.appColorGray,
      onPressed: () {},
    );
  }
}
