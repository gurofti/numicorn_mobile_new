import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../../../core/extension/color_extension.dart';

class CupPage extends StatelessWidget {
  TransitionModel transitions;
  CupPage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("transitions.actions[transitions.index].params['target']" +
        transitions.actions[transitions.index].params['target'].toString());
    return QuestionTransitionView(
      transitionModel: transitions,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('asset/question/2.json', width: context.width * 0.8),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              'Harika!',
              style: TextStyle(
                fontSize: 30,
                fontFamily: context.fontFamily800,
                color: Colors.white,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 8.0),
          //   child: Text(
          //     transitions.actions[transitions.index].params.toString() +
          //         ' BAŞARI PUANI KAZANDIN!',
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontFamily: context.fontFamily800,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              getAchievementMessage(
                  transitions.actions[transitions.index].params['target']),
              style: TextStyle(
                fontSize: 17,
                fontFamily: context.fontFamily700,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCartItem(
                  context,
                  title: 'BAŞARI PUANI'.toUpperCase(),
                  iconPath: 'asset/general/cup2.png',
                  value: transitions.actions[transitions.index].params['cup']
                      .toString(),
                ),
                buildCartItem(
                  context,
                  title: 'GEÇEN SÜRE'.toUpperCase(),
                  iconPath: 'asset/general/timer.png',
                  value: transitions
                      .actions[transitions.index].params['lastTime']
                      .toString(),
                ),
                buildCartItem(
                  context,
                  title: 'BAŞARI ORANI'.toUpperCase(),
                  iconPath: 'asset/general/target.png',
                  value: '%' +
                      transitions.actions[transitions.index].params['target']
                          .toString(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 5,
            ),
            child: Text(
              "Her başarı puanı, sizin bilgi hazinenizin biraz daha zenginleştiğini gösterir. ",
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
    );
  }

  String getAchievementMessage(int percentage) {
    if (percentage >= 90) {
      return "MÜKEMMEL BİR DERS!";
    } else if (percentage >= 80) {
      return "ÇOK BAŞARILI BİR İŞ ÇIKARDIN!";
    } else if (percentage >= 70) {
      return "GAYET İYİ İŞ ÇIKARDIN!";
    } else if (percentage >= 60) {
      return "DAHA DA İYİSİNİ YAPABİLİRSİN!";
    } else {
      return "ÇALIŞMAYA DEVAM ET!";
    }
  }

  void main() {
    int successPercentage = 85; // Örnek başarı yüzdesi
    String message = getAchievementMessage(successPercentage);
    print("Başarı Yüzdesi: $successPercentage%");
    print("Başarı Mesajı: $message");
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
