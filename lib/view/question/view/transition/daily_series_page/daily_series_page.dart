import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class DailySeriesPage extends StatelessWidget {
  TransitionModel transitions;
  DailySeriesPage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionTransitionView(
      transitionModel: transitions,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'asset/lottie/series.json',
            width: context.width * 0.6,
            height: context.width * 0.6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              'Günlük Seri!',
              style: TextStyle(
                fontSize: 25,
                fontFamily: context.fontFamily800,
                color: Colors.white,
                shadows: <Shadow>[
                  // Shadow(
                  //   offset: Offset(3.0, 3.0),
                  //   blurRadius: 2.0,
                  //   color: Color.fromARGB(255, 109, 107, 107),
                  // ),
                  // Shadow(
                  //   offset: Offset(4.0, 4.0),
                  //   blurRadius: 5.0,
                  //   color: context.appColor600,
                  // ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              transitions.actions[transitions.index].params.toString() +
                  '. GÜN',
              style: TextStyle(
                fontSize: 55,
                fontFamily: context.fontFamily800,
                color: Colors.white,
                // shadows: <Shadow>[
                //   Shadow(
                //     offset: Offset(5.0, 5.0),
                //     blurRadius: 2.0,
                //     color: Color.fromARGB(255, 109, 107, 50),
                //   ),
                //   Shadow(
                //     offset: Offset(5.0, 5.0),
                //     blurRadius: 5.0,
                //     color: context.appColor600,
                //   ),
                // ],
              ),
            ),
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Eğitim yolculuğunuzda her adım, başarıya giden yolun taşlarını döşer.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: context.fontFamily600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
