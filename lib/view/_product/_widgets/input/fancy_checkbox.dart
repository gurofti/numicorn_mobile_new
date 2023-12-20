import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import 'input_button.dart';

class FancyCheckBox extends StatelessWidget {
  FancyCheckBox({
    this.labelText,
    this.labelOnClick,
    required this.fieldController,
    required this.fieldOnChange,
  });

  String? labelText;
  bool fieldController;
  Function fieldOnChange;
  Function? labelOnClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Observer(builder: (_) {
                return GestureDetector(
                  onTap: () => this.labelOnClick!(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputButton(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        size: 10,
                        color: fieldController
                            ? context.appColor
                            : context.appColorRed,
                        onPressed: () => {fieldOnChange()},
                      ),
                      if (labelText != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                labelText!,
                                style: TextStyle(
                                  fontFamily: context.fontFamily400,
                                  fontSize: 13,
                                ),
                              ),
                              if (fieldController == null)
                                Text(
                                  LocaleKeys.form_validation_required.tr(),
                                  style: TextStyle(
                                    color: context.appColorRed,
                                    fontFamily: context.fontFamily500,
                                  ),
                                )
                            ],
                          ),
                        ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
