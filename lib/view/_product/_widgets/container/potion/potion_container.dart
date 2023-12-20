import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';

class PotionContainer extends StatelessWidget {
  PotionContainer({
    Key? key,
    this.onTapUp,
    required this.title,
    required this.image,
    required this.completed,
    required this.lessons,
    this.sectionIconWidth,
    this.sectionIconHeight,
  }) : super(key: key);
  void Function(TapUpDetails)? onTapUp;
  late String? image;
  late String title;
  late String completed;
  late String lessons;
  late double? sectionIconWidth;
  late double? sectionIconHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTapUp: (details) => onTapUp!(details),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 300,
                    radius: context.width * 0.23,
                    circularStrokeCap: CircularStrokeCap.round,
                    lineWidth: context.width * 0.04,
                    percent: ((int.parse(completed)) / int.parse(lessons)),
                    progressColor: context.appColor,
                    backgroundColor: context.appColorGray.withOpacity(0.5),
                    center: Stack(
                      children: [
                        SvgPicture.asset(
                          'asset/image/potion.svg', //'asset/image/rocket_login.png',
                          fit: BoxFit.cover,
                          height: context.width * 0.30,
                          width: context.width * 0.30,
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: context.height * 0.025,
                          child: SvgPicture.network(
                            image!, //'asset/image/rocket_login.png',
                            width: sectionIconWidth != null
                                ? context.width * 0.30 * sectionIconWidth!
                                : context.width * 0.30 * 0.45,
                            height: sectionIconHeight != null
                                ? context.height * 0.30 * sectionIconHeight!
                                : null,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        'asset/image/star.svg', //'asset/image/rocket_login.png',
                        fit: BoxFit.cover,
                        height: context.width * 0.1,
                        width: context.width * 0.1,
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            completed,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'PoppinsBold',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  bottom: 0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 3),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PoppinsBold',
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
