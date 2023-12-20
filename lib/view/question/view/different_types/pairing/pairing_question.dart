import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';
import 'package:numicorn_mobile/view/question/view/actions/question_button.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../../_product/_widgets/input/input_button.dart';
import '../../../view_model/question_view_model.dart';

class PairingQuestion extends StatelessWidget {
  PairingQuestion({Key? key, required this.viewModel}) : super(key: key);
  QuestionViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Observer(builder: (_) {
        return Column(
          children: [
            // Text('question: ' + viewModel.pairingQuestion.toString()),
            // Text('answer: ' + viewModel.pairingAnswer.toString()),
            // Text('selected length: ' + viewModel.pairingIds.toString()),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: viewModel.itemQuestions.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Observer(builder: (_) {
                  return Expanded(
                    child: buildItemContainer(
                      context,
                      viewModel,
                      viewModel.itemQuestions[index],
                      viewModel.itemAnswers[index],
                    ),
                  );
                });
              },
            ),
          ],
        );
      }),
    );
  }

  Widget buildItemContainer(
    BuildContext context,
    QuestionViewModel viewModel,
    Items question,
    Items answer,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: FancyButton(
                // ignore: sort_child_properties_last
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  width: context.width,
                  height: context.height * 0.17,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: checked(viewModel, question)
                        ? context.appColor
                        : wrongChecked(viewModel, question) &&
                                viewModel.pairingQuestion == question.id
                            ? Colors.red
                            : viewModel.pairingQuestion == question.id
                                ? context.appButtonGreen100
                                : Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: questionCard(question, viewModel, context),
                ),
                size: 6,
                radius: 20,
                color: checked(viewModel, question)
                    ? context.appColor700
                    : wrongChecked(viewModel, question) &&
                            viewModel.pairingQuestion == question.id
                        ? context.appColorRed100
                        : viewModel.pairingQuestion == question.id
                            ? context.appButtonBorderGreen100
                            : context.appColorGray,
                onPressed: () {
                  if (viewModel.pairingQuestion == question.id) {
                    viewModel.pairingQuestion = null;
                  } else {
                    viewModel.pairingQuestion = question.id;
                  }
                  if (viewModel.pairingCheckError() == null) {
                    QuestionButton(
                      viewModel: viewModel,
                    ).wrongShowModal(context);
                  }
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: FancyButton(
                // ignore: sort_child_properties_last
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  width: context.width,
                  height: context.height * 0.17,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: checked(viewModel, answer)
                        ? context.appColor
                        : wrongChecked(viewModel, answer) &&
                                viewModel.pairingAnswer == answer.id
                            ? Colors.red
                            : viewModel.pairingAnswer == answer.id
                                ? context.appButtonGreen100
                                : Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: answerCard(answer, viewModel, context),
                ),
                size: 6,
                radius: 20,
                color: checked(viewModel, answer)
                    ? context.appColor700
                    : wrongChecked(viewModel, answer) &&
                            viewModel.pairingAnswer == answer.id
                        ? context.appColorRed100
                        : viewModel.pairingAnswer == answer.id
                            ? context.appButtonBorderGreen100
                            : context.appColorGray,
                onPressed: () {
                  if (viewModel.pairingAnswer == answer.id) {
                    viewModel.pairingAnswer = null;
                  } else {
                    viewModel.pairingAnswer = answer.id;
                  }
                  if (viewModel.pairingCheckError() == null) {
                    QuestionButton(
                      viewModel: viewModel,
                    ).wrongShowModal(context);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool wrongChecked(QuestionViewModel viewModel, Items item) {
    return viewModel.pairingQuestion != null &&
        viewModel.pairingAnswer != null &&
        viewModel.pairingQuestion != viewModel.pairingAnswer;
  }

  Widget questionCard(
      Items question, QuestionViewModel viewModel, BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: context.width,
          child: question.questionIsImage == true
              ? ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    checked(viewModel, question) ||
                            viewModel.pairingQuestion == question.id ||
                            (wrongChecked(viewModel, question) &&
                                viewModel.pairingQuestion == question.id)
                        ? Colors.white
                        : context.appColor1000,
                    BlendMode.srcIn,
                  ),
                  child: Image.network(
                    question.questionPath!,
                    width: context.width * 0.1,
                  ),
                )
              : Text(
                  question.question!,
                  style: TextStyle(
                    color: checked(viewModel, question) ||
                            viewModel.pairingQuestion == question.id ||
                            (wrongChecked(viewModel, question) &&
                                viewModel.pairingQuestion == question.id)
                        ? Colors.white
                        : context.appColor1000,
                    fontSize: 24,
                    fontFamily: context.fontFamily600,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
        if (checked(viewModel, question)) StarLottie()
      ],
    );
  }

  Widget answerCard(
    Items answer,
    QuestionViewModel viewModel,
    BuildContext context,
  ) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: context.width,
            child: answer.answerIsImage == true
                ? ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      checked(viewModel, answer) ||
                              viewModel.pairingAnswer == answer.id ||
                              (wrongChecked(viewModel, answer) &&
                                  viewModel.pairingAnswer == answer.id)
                          ? Colors.white
                          : context.appColor1000,
                      BlendMode.srcIn,
                    ),
                    child: Image.network(
                      answer.answerPath!,
                      height: context.height * 0.2,
                    ),
                  )
                : Text(
                    answer.answer!,
                    style: TextStyle(
                      color: checked(viewModel, answer) ||
                              viewModel.pairingAnswer == answer.id ||
                              (wrongChecked(viewModel, answer) &&
                                  viewModel.pairingAnswer == answer.id)
                          ? Colors.white
                          : context.appColor1000,
                      fontSize: 24,
                      fontFamily: context.fontFamily600,
                    ),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),
        if (checked(viewModel, answer)) StarLottie()
      ],
    );
  }

  Positioned StarLottie() {
    return Positioned.fill(
      left: 0,
      right: 0,
      bottom: 0,
      top: 0,
      child: Lottie.asset(
        'asset/image/data.json',
      ),
    );
  }

  bool checked(QuestionViewModel viewModel, Items item) {
    return ((viewModel.pairingQuestion != null &&
            viewModel.pairingAnswer == item.id &&
            viewModel.pairingQuestion == viewModel.pairingAnswer) ||
        viewModel.pairingIds.contains(item.id));
  }
}
