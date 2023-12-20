import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/model/question_answer_request.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/service/IQuestionAnswerService.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/service/question_answer_service.dart';
part 'question_answer_view_model.g.dart';

class QuestionAnswerViewModel = _QuestionAnswerViewModelBase
    with _$QuestionAnswerViewModel;

abstract class _QuestionAnswerViewModelBase extends BaseViewModel with Store {
  late IQuestionAnswerService questionAnswerService;
  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {
    questionAnswerService = QuestionAnswerService(this.buildContext!);
  }

  @observable
  Sections section = Sections();

  @action
  Future<void> backQuestionPage() async {
    await navigation.navigateToPageClear(
      path: NavigationConstants.QUESTION,
      data: section,
    );
  }

  @action
  Future<void> detailPage() async {
    await questionAnswerService.diamondCreate(
      QuestionAnswerRequestModel(
        question_id: section.question!.id!,
        type: 'QUESTION',
      ),
    );
    await navigation.navigateToPageClear(
      path: NavigationConstants.QUESTION_ANSWER_DETAIL,
      data: section,
    );
  }
}
