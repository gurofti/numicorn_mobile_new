import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/core/extension/color_extension.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';
import 'package:numicorn_mobile/view/question/view/question_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/view_model/question_answer_view_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer_detail/view_model/question_answer_detail_view_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_transition/view/question_transition_view.dart';
import '../../../../../../core/extension/context_extension.dart';
import '../../../../../../core/extension/font_extension.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';

class QuestionAnswerDetailView extends StatelessWidget {
  Sections section;
  QuestionAnswerDetailView(this.section, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("answer: quesiton_id: " + section.question!.id!.toString());
    print("answer: quesiton_diamond: " + section.question!.diamond!.toString());
    return BaseView<QuestionAnswerDetailViewModel>(
      viewModel: QuestionAnswerDetailViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.section = section;
      },
      onPageBuilder:
          (BuildContext context, QuestionAnswerDetailViewModel viewModel) =>
              Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                height: context.height,
                width: context.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      QuestionView(section).buildQuestionContainer(
                        section.question!,
                        context,
                      ),
                      QuestionView(section).buildQuestionContainer(
                        QuestionModel(
                          path: section.question!.answer_path!,
                          is_image: true,
                        ),
                        context,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: context.width,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: FancyButton(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      width: context.width * 0.85,
                      child: Text(
                        'Devam Et'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    ),
                    size: 18,
                    radius: 30.0,
                    color: context.appColor,
                    onPressed: () {
                      print("conti");
                      viewModel.questionPage();
                    },
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
