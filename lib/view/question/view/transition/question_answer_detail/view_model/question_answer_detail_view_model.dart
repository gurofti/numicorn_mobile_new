import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
part 'question_answer_detail_view_model.g.dart';

class QuestionAnswerDetailViewModel = _QuestionAnswerDetailViewModelBase
    with _$QuestionAnswerDetailViewModel;

abstract class _QuestionAnswerDetailViewModelBase extends BaseViewModel
    with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {}

  @observable
  Sections section = Sections();

  @action
  Future<void> questionPage() async {
    await navigation.navigateToPageClear(
      path: NavigationConstants.QUESTION,
      data: section,
    );
  }
}
