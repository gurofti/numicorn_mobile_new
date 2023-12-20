import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../_product/_widgets/input/input_button.dart';

class TrueOrFalseButton extends StatefulWidget {
  Color currentBorderColor;
  Color currentBackgroundColor;
  Color activeBackgroundColor;
  Color currentColor;
  Color activeColor;
  String text;
  IconData icon;
  dynamic onClick;
  bool? activeStatus = false;
  bool? status;

  TrueOrFalseButton({
    Key? key,
    required this.currentBorderColor,
    required this.currentBackgroundColor,
    required this.activeBackgroundColor,
    required this.currentColor,
    required this.activeColor,
    required this.text,
    required this.icon,
    required this.onClick,
    required this.status,
    required this.activeStatus,
  }) : super(key: key);

  @override
  State<TrueOrFalseButton> createState() => _TrueOrFalseButtonState();
}

class _TrueOrFalseButtonState extends State<TrueOrFalseButton> {
  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InputButton(
      size: 20,
      color: widget.activeStatus == widget.status
          ? context.appColor300
          : context.appColorGray,
      onPressed: () {
        setState(() {
          widget.onClick();
        });
      },
      child: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: context.width,
          padding: const EdgeInsets.symmetric(vertical: 40),
          decoration: BoxDecoration(
            color: widget.activeStatus == widget.status
                ? context.appColor
                : Colors.white,
            // color: activeStatus
            //     ? widget.activeBackgroundColor
            //     : widget.currentBackgroundColor,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Column(
            children: [
              Icon(
                widget.icon,
                size: 60,
                color: widget.activeStatus == widget.status
                    ? Colors.white
                    : widget.currentColor,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: widget.activeStatus == widget.status
                      ? Colors.white
                      : widget.currentColor,
                  fontSize: 20,
                  fontFamily: context.fontFamily500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
