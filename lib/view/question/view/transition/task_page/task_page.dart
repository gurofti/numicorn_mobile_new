import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class TaskPage extends StatelessWidget {
  TransitionModel transitions;
  TaskPage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionTransitionView(
      transitionModel: transitions,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset('asset/lottie/task.json',
                width: context.width * 0.4),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'Görevi Tamamladın!',
              style: TextStyle(
                fontSize: 25,
                fontFamily: context.fontFamily800,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: context.width,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Lottie.network(
                        'https://assets4.lottiefiles.com/packages/lf20_5dbf6say.json',
                        width: context.width * 0.25),
                  ),
                ),
                // Expanded(
                //   flex: 1,
                //   child: Container(
                //     width: context.width * 0.3,
                //     child: LinearPercentIndicator(
                //       lineHeight: 20.0,
                //       animation: true,
                //       animationDuration: 300,
                //       barRadius: Radius.circular(15),
                //       percent: 0.3,
                //       // backgroundColor:
                //       //     context.appColorGray.withOpacity(0.5),
                //       // progressColor: context.appColorRed,
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
