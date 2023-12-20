import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/question/view/transition/doping_reload_page/view_model/doping_reload_view_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';
import '../../../../../../core/extension/context_extension.dart';
import '../../../../../../core/extension/font_extension.dart';
import '../../../../../../core/extension/color_extension.dart';

class DopingReloadView extends StatelessWidget {
  TransitionModel transitions;
  DopingReloadView(this.transitions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<DopingReloadViewModel>(
      viewModel: DopingReloadViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, DopingReloadViewModel viewModel) =>
          QuestionTransitionView(
        transitionModel: transitions,
        content: Padding(
          padding: EdgeInsets.only(top: context.height * 0.12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Lottie.asset(
                'asset/lottie/unicorn/doping_reload.json',
                width: context.width * 0.9,
                height: context.width * 0.9,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Dopingin Süresini Arttır!',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: context.fontFamily800,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Derslerin bitiminde kazanacağın başarı puanını iki kat olarak kazanmayı sürdür. ",
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
        ),
        continueWidget: (page) {
          return Column(
            children: [
              FancyButton(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: context.width * 0.8,
                    child: Text(
                      'YENİLE, 100 ELMAS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: context.appColor,
                        fontFamily: context.fontFamily600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                color: Colors.white,
                size: 20,
                radius: 22,
              ),
              GestureDetector(
                onTap: () {
                  page();
                },
                child: Container(
                  width: context.width,
                  margin: EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'HAYIR, TEŞEKKÜRLER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: context.fontFamily600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
