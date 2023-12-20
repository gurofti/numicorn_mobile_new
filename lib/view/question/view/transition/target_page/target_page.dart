import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class TargetPage extends StatelessWidget {
  TransitionModel transitions;
  TargetPage(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionTransitionView(
      transitionModel: transitions,
      content: Container(
        width: context.width,
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Lottie.asset(
                    'asset/lottie/rocket2.json',
                    height: context.height * 0.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'HARİKA!',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: context.fontFamily800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: Text(
                    'GÖREV TAMAMLANDI',
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: context.fontFamily800,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.06,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount:
                      transitions.actions[transitions.index].params.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    print(transitions.actions[transitions.index].params[index]
                        .toString());
                    dynamic model =
                        transitions.actions[transitions.index].params[index];
                    print("modal");

                    return targetItem(
                      context,
                      model,
                    );
                  },
                ),
                // targetItem(context, title: '10 Kupa Kazan', icon: 'cup'),
                // targetItem(context, title: '20 Elmas Kazan', icon: 'cup'),
                // targetItem(context, title: '10 Kupa Kazan', icon: 'cup'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget targetItem(BuildContext context, dynamic model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.0),
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 8,
              ),
              left: BorderSide(
                color: Colors.white,
                width: 2,
              ),
              right: BorderSide(
                color: Colors.white,
                width: 2,
              ),
              top: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  model['path'],
                ),
              ),
            ),
            Expanded(
              flex: 11,
              child: Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          model['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: context.fontFamily600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        width: context.width * 0.6,
                        child: LinearPercentIndicator(
                          animation:
                              model['view'] == null ? false : model['view'],
                          animationDuration: 500,
                          lineHeight: 28.0,
                          padding: EdgeInsets.zero,
                          // leading: new Text(" "),
                          // trailing: new Text("right "),
                          percent: (model['value'] > model['target']
                                  ? model['target']
                                  : model['value']) /
                              model['target'],
                          isRTL: true,
                          barRadius: Radius.circular(25),
                          center: Text(
                            (model['value'] > model['target']
                                        ? model['target']
                                        : model['value'])
                                    .toString() +
                                ' / ' +
                                model['target'].toString(),
                            style: TextStyle(
                              color: context.appColor,
                              fontFamily: context.fontFamily600,
                              fontSize: 16,
                            ),
                          ),
                          linearStrokeCap: LinearStrokeCap.butt,
                          backgroundColor:
                              context.appColorGray.withOpacity(0.15),
                          progressColor: Colors.white,
                        ),
                        // child: LinearPercentIndicator(
                        //   lineHeight: 25.0,
                        //   padding: EdgeInsets.zero,
                        //   animation: true,
                        //   animationDuration: 300,
                        //   animationDelay: 1800,
                        //   barRadius: Radius.circular(15),
                        //   percent: (model['value'] > model['target']
                        //           ? model['target']
                        //           : model['value']) /
                        //       model['target'],
                        //   backgroundColor: context.appColorGray.withOpacity(0.2),
                        //   progressColor: Colors.white,
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
