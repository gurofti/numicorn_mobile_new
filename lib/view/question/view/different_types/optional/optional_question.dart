import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';
import 'package:numicorn_mobile/view/question/view/actions/question_button.dart';
import 'package:numicorn_mobile/view/question/view_model/question_view_model.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';

class OptionalQuestion extends StatelessWidget {
  OptionalQuestion({Key? key, required this.viewModel}) : super(key: key);
  QuestionViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    print(viewModel.answerOption.toString());
    return Observer(builder: (_) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // State dinlemesi için eklendi.
          Text(
            viewModel.answerOption.toString(),
            style: TextStyle(color: Colors.transparent, fontSize: 0),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: viewModel.questionModel.answers!.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Observer(builder: (_) {
                return buildAnswerItem(
                  context,
                  viewModel,
                  viewModel.answers[index],
                );
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: QuestionButton(
              viewModel: viewModel,
            ),
          )
        ],
      );
    });
  }

  Container buildAnswerItem(
      BuildContext context, QuestionViewModel viewModel, Answers answer) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          // Text(answer.listNo.toString()),
          FancyButton(
            child: Container(
              height: context.height * 0.04,
              width: context.width,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: 0,
              ),
              child: answer.isImage != null && answer.isImage!
                  ? ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        viewModel.answerOption == answer.listNo
                            ? Colors.white
                            : context.appColor1000,
                        BlendMode.srcATop,
                      ),
                      child: Image.network(
                        answer.path!,
                        color: viewModel.answerOption == answer.listNo
                            ? Colors.white
                            : context.appColor1000,
                      ),
                    )
                  : Text(
                      answer.value.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        color: viewModel.answerOption == answer.listNo
                            ? Colors.white
                            : context.appColor1000,
                        fontFamily: context.fontFamily600,
                      ),
                      textAlign: TextAlign.center,
                    ),
            ),
            size: 18,
            radius: 30.0,
            color: viewModel.answerOption == answer.listNo
                ? context.appButtonGreen100
                : Colors.white, // context.appColorLight,
            onPressed: () {
              print(answer.listNo);
              viewModel.answerChangeOption(answer.listNo);
            },
          ),
        ],
      ),
    );
  }
}
