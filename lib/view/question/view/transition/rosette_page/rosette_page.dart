import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/color_extension.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class RosettePage extends StatelessWidget {
  TransitionModel transitions;
  RosettePage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionTransitionView(
      transitionModel: transitions,
      content: SizedBox(
        width: context.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.width * 0.2,
                vertical: context.width * 0.1,
              ),
              decoration: BoxDecoration(
                color: context.appColor700.withOpacity(0.45),
                borderRadius: BorderRadius.all(
                  Radius.circular(context.width * 0.05),
                ),
              ),
              child: Image.network(
                transitions.actions[transitions.index].params['path'],
                width: context.width * 0.3,
              ),
            ),
            SizedBox(height: context.height * 0.08),
            Text(
              'Rozet Kazandın!',
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
            SizedBox(height: context.height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 15),
                    width: context.width,
                    child: Text(
                      transitions.actions[transitions.index].params['language']
                          ['title'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
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
                  Text(
                    transitions.actions[transitions.index].params['language']
                        ['description'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: context.fontFamily600,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
