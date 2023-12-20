import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/transition/potion/potion_view_model.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class PotionView extends StatelessWidget {
  const PotionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<PotionViewModel>(
      viewModel: PotionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, PotionViewModel viewModel) =>
          Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'asset/transition/diamondimg.png',
                      width: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '120',
                        style: TextStyle(
                          fontFamily: context.fontFamily400,
                          fontSize: 17,
                          color: context.appDiamond,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: context.height * 0.1),
                  child: Column(
                    children: [
                      Container(
                        child: Lottie.asset(
                          'asset/transition/diamond.json',
                          width: context.width * 0.6,
                          repeat: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Text(
                          'Toplam 12 Mücevher kazandın'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: context.fontFamily600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 8,
                        ),
                        child: Text(
                          'Her gün daha fazla elmas kazanmak için daha fazla günlük görev tamamla.',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: context.fontFamily400,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FancyButton(
                  radius: 25,
                  color: context.appColor,
                  child: SizedBox(
                    width: context.width,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Devam Et',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: context.fontFamily500,
                          fontSize: 21,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onPressed: () {
                    // viewModel.login();
                  },
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
