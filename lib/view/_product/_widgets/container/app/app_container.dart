import 'package:flutter/material.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../star/start_widget.dart';

class AppContainer extends StatelessWidget {
  AppContainer({
    Key? key,
    this.header,
    required this.body,
    this.preferredSize = 1.5,
    this.skewColor,
    this.backgroundColor,
  }) : super(key: key);
  Widget? header;
  Widget body;
  double? preferredSize = 1.5;
  Color? skewColor;
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: this.backgroundColor ?? context.appColor,
            child: Stack(
              children: [
                buildSkewContainer(
                  context,
                  context.width * 0.1,
                  context.width * 0.7,
                ),
                buildSkewContainer(
                  context,
                  context.width * 0.6,
                  context.width * 0.05,
                ),
                buildSkewContainer(
                  context,
                  context.width * 0.2 + context.width,
                  -context.width * 0.6,
                ),
                buildSkewContainer(
                  context,
                  context.width * 0.85 + context.width,
                  -context.width * 0.9,
                ),
                header != null
                    ? SizedBox(
                        height: context.height,
                        width: context.width,
                        child: Scaffold(
                          backgroundColor: Colors.transparent,
                          appBar: AppBar(
                            titleSpacing: 0,
                            bottom: PreferredSize(
                              child: Container(
                                color: context.appColor800,
                                height: preferredSize,
                              ),
                              preferredSize: Size.fromHeight(1.0),
                            ),
                            automaticallyImplyLeading: false,
                            title: Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Star(),
                                          Star(),
                                        ],
                                      ),
                                    ),
                                  ),
                                  header!
                                ],
                              ),
                            ),
                          ),
                          body: body,
                        ),
                      )
                    : body,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildSkewContainer(
      BuildContext context, double left, double right) {
    return Positioned.fill(
      top: 0,
      bottom: 0,
      left: left,
      right: right,
      child: Transform(
        transform: Matrix4.skewX(-0.45),
        child: Container(
          color: this.skewColor ?? context.appColor600.withOpacity(0.7),
        ),
      ),
    );
  }
}
