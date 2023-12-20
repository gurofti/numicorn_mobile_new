import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/view/main/setting/view/setting_view.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

Widget buildLectureContainer(
  BuildContext context, {
  required String title,
  required String secondTitle,
  required String description,
  required String iconPath,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: SettingView().settingCard(
      context,
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: context.appColorLight,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    iconPath,
                    width: context.width * 0.15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          title,
                          style: TextStyle(
                            fontFamily: context.fontFamily500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            secondTitle,
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: context.fontFamily500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 22,
            )
          ],
        ),
      ),
    ),
  );
}
