import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/view/question/view/different_types/true_or_false/true_or_false_button.dart';

import '../../../view_model/question_view_model.dart';
import '../../actions/question_button.dart';

class TrueOrFalseQuestion extends StatelessWidget {
  TrueOrFalseQuestion({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  QuestionViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: TrueOrFalseButton(
                      currentBorderColor: Colors.red,
                      currentBackgroundColor: Colors.white,
                      activeBackgroundColor: Colors.red,
                      currentColor: Colors.red,
                      activeColor: Colors.white,
                      text: 'Yanlış',
                      icon: Icons.close,
                      status: false,
                      activeStatus: viewModel.answerTrueOrFalse,
                      onClick: () {
                        viewModel.answerTrueOrFalse = false;
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: TrueOrFalseButton(
                      currentBorderColor: Colors.green,
                      currentBackgroundColor: Colors.white,
                      activeBackgroundColor: Colors.green,
                      currentColor: Colors.green,
                      activeColor: Colors.white,
                      text: 'Doğru',
                      icon: Icons.check,
                      status: true,
                      activeStatus: viewModel.answerTrueOrFalse,
                      onClick: () {
                        viewModel.answerTrueOrFalse = true;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: QuestionButton(
              viewModel: viewModel,
            ),
          )
        ],
      );
    });
  }
}
