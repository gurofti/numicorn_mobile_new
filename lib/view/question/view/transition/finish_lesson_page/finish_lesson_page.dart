import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class FinishLessonPage extends StatelessWidget {
  TransitionModel transitions;
  FinishLessonPage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionTransitionView(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'asset/lottie/finish-lesson.json',
            width: context.width * 0.7,
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'DERS BİTTİ!',
              style: TextStyle(
                fontSize: 35,
                fontFamily: context.fontFamily800,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Bir ders daha geride kaldı. Her yeni bilgi parçası, sizi daha bilgili bir insan yapıyor.",
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
          ),
        ],
      ),
    );
  }
}
