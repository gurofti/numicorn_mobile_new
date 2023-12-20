import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class DiamondPage extends StatelessWidget {
  TransitionModel transitions;
  DiamondPage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionTransitionView(
      transitionModel: transitions,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'asset/question/diamond_yellow.json',
            width: context.width * 0.55,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'TEBRİKLER',
              style: TextStyle(
                fontSize: 35,
                fontFamily: context.fontFamily800,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              transitions.actions[transitions.index].params.toString() +
                  ' ELMAS KAZANDIN!',
              style: TextStyle(
                fontSize: 20,
                fontFamily: context.fontFamily800,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              "Her elmas, öğrenmenin taçlandığı bir simgedir. Bugün de bir elmas kazandınız, devam edin!",
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
}
