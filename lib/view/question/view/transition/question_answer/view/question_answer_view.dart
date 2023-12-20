import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/view_model/question_answer_view_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import '../../../../../../core/extension/context_extension.dart';
import '../../../../../../core/extension/font_extension.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';

class QuestionAnswerView extends StatelessWidget {
  Sections section;
  QuestionAnswerView(this.section, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("answer: quesiton_id: " + section.question!.id!.toString());
    print("answer: quesiton_diamond: " + section.question!.diamond!.toString());
    return BaseView<QuestionAnswerViewModel>(
      viewModel: QuestionAnswerViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.section = section;
      },
      onPageBuilder:
          (BuildContext context, QuestionAnswerViewModel viewModel) => Scaffold(
        body: QuestionTransitionView(
          continueButton: () {
            viewModel.detailPage();
          },
          closeEvent: () {
            Navigator.pop(context);
            // viewModel.backQuestionPage();
          },
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Container(
              //     width: context.width * 3,
              //     color: Colors.orange,
              //     child: Lottie.asset(
              //       'asset/question/1-sporcu.json',
              //       width: context.width,
              //       height: context.width,
              //     ),
              //   ),
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Lottie.asset(
                    'asset/question/diamond_yellow.json',
                    width: context.width * 0.55,
                    height: context.width * 0.55,
                  ),
                ),
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Image.asset(
              //     'asset/question/test.png',
              //     width: context.width * 1.5,
              //     height: context.width * 1.5,
              //   ),
              // ),
              // Lottie.asset(
              //   'asset/question/diamond_yellow.json',
              //   width: context.width * 0.5,
              //   height: context.width * 0.5,
              // ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Bilgi Hazinesi İçin ' +
                      section.question!.diamond.toString() +
                      ' Elmas Harcayın!',
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: context.fontFamily800,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Keşfin sırrını çözmek ve sorunun derinliklerine inmek için sadece bir adım kaldı! Sizi cevabın kapısını aralamaya davet ediyoruz. Ancak bu özel bilgiye erişmek için, " +
                      section.question!.diamond.toString() +
                      " parlak elmasınızı harcamanız gerekecek. Bu fırsatı kaçırmayın ve bilginin perdesini aralayarak yeni ufuklara doğru adım atın!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: context.fontFamily600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
