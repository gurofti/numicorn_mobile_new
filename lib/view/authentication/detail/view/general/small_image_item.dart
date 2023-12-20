import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../../_product/_widgets/button/fancy_button.dart';

class SmallImageItem extends StatelessWidget {
  SmallImageItem({
    Key? key,
    required this.itemId,
    required this.selectItemId,
    this.itemCode,
    required this.itemName,
    required this.onPressed,
    this.textSize = 18.0,
  }) : super(key: key);

  final int itemId;
  final int selectItemId;
  final String itemName;
  String? itemCode = null;
  final void Function() onPressed;
  double textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Observer(builder: (_) {
            return FancyButton(
              radius: 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: context.width,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        if (itemCode != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: itemCode!.contains('svg')
                                  ? SvgPicture.asset(
                                      'asset/' + itemCode!,
                                      width: context.width * 0.08,
                                    )
                                  : Image.asset(
                                      'asset/' + itemCode!,
                                      width: context.width * 0.06,
                                    ),
                            ),
                          ),
                        Container(
                          width: context.width * 0.7,
                          child: Text(
                            itemName,
                            style: TextStyle(
                              color: itemId == selectItemId
                                  ? Colors.white
                                  : context.appColor1000,
                              fontSize: textSize,
                              fontFamily: context.fontFamily600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              size: 20,
              color: itemId == selectItemId ? context.appColor : Colors.white,
              onPressed: onPressed,
            );
          }),
        ],
      ),
    );
  }
}
