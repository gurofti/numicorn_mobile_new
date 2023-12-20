import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../../../core/extension/color_extension.dart';

class DopingPage extends StatelessWidget {
  TransitionModel transitions;
  DopingPage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionTransitionView(
      transitionModel: transitions,
      content: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Lottie.asset(
                  'asset/lottie/unicorn/doping.json',
                  width: context.width * 0.9,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Puan Dopingi Buldun!',
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: context.fontFamily800,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 15,
                ),
                child: Text(
                  "Harikasın! Bu düzeyi tamamladın ve şimdi derslerdeki puanlarını ikiye katlama zamanı, başarılar!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: context.fontFamily600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
          // Positioned(
          //   child: Lottie.asset(
          //     'asset/lottie/firework2.json',
          //     width: context.width,
          //   ),
          // ),
        ],
      ),
    );
  }

  Container buildCartItem(
    BuildContext context, {
    required String title,
    required String iconPath,
    required String value,
  }) {
    return Container(
      width: context.width * 0.28,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.only(
        top: 4,
        left: 3,
        right: 3,
        bottom: 3,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              title,
              style: TextStyle(
                color: context.appColor,
                fontFamily: context.fontFamily600,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: context.appColor,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(iconPath, width: context.width * 0.07),
                SizedBox(
                  width: 5,
                ),
                Text(
                  value,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: context.fontFamily700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
