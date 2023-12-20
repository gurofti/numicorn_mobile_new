import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import 'input_button.dart';

class FancyTextInput extends StatelessWidget {
  FancyTextInput({
    this.labelText,
    this.hintText,
    this.obscureText,
    this.suffixIcon,
    required this.fieldController,
    this.keyboardType = TextInputType.text,
    this.validation,
    this.onTap,
    this.borderColor,
    this.inputFormatters,
  });

  String? labelText;
  String? hintText;
  bool? obscureText;
  Widget? suffixIcon;
  TextEditingController fieldController;
  TextInputType? keyboardType;
  String? Function(String?)? validation;
  Function? onTap;
  Color? borderColor;
  List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    borderColor ??= context.appColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              labelText!,
              style: TextStyle(
                fontFamily: context.fontFamily400,
                fontSize: 16,
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Observer(builder: (_) {
                return InputButton(
                  child: SizedBox(
                    width: context.width * 0.9,
                    child: TextFormField(
                      onTap: () {
                        if (onTap != null) {
                          onTap!();
                        }
                      },
                      inputFormatters: inputFormatters,
                      keyboardType: keyboardType,
                      cursorColor: context.appColor,
                      controller: fieldController,
                      validator: validation,
                      obscureText: obscureText ?? false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: hintText,
                        suffixIcon: suffixIcon,
                        suffixIconColor: borderColor,
                        errorStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'PoppinsMedium',
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  size: 50,
                  color: borderColor!,
                  onPressed: () => null,
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
