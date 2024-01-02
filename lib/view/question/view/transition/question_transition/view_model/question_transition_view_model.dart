import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/core/init/navigation/navigation_service.dart';
import 'package:numicorn_mobile/view/_product/_widgets/transition/transition_page.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';

part 'question_transition_view_model.g.dart';

class QuestionTransitionViewModel = _QuestionTransitionViewModelBase
    with _$QuestionTransitionViewModel;

abstract class _QuestionTransitionViewModelBase extends BaseViewModel
    with Store {
  NavigationService navigation = NavigationService.instance;

  @override
  void setContext(BuildContext context) => buildContext = context;

  @override
  void init() {}

  @observable
  TransitionModel? transitionModel;

  @action
  Future<void> transitionPage() async {
    if (transitionModel!.actions[transitionModel!.index + 1].page ==
        NavigationConstants.QUESTION) {
      print("question page");
      await navigation.navigateToPageClear(
        path: NavigationConstants.QUESTION,
        data: transitionModel!.actions[transitionModel!.index + 1].params,
      );
    } else if ((transitionModel!.index + 2) <=
        transitionModel!.actions.length) {
      if (transitionModel!.actions[transitionModel!.index + 1].page ==
          NavigationConstants.QUESTION) {
        await navigation.navigateToPageClear(
          path: transitionModel!.actions[transitionModel!.index + 1].page
              .toString(),
          data: transitionModel!.section!,
        );
      } else {
        await navigation.navigateToPageClear(
          path: transitionModel!.actions[transitionModel!.index + 1].page
              .toString(),
          data: TransitionModel(
            index: transitionModel!.index + 1,
            actions: transitionModel!.actions,
            finishPage: transitionModel!.finishPage,
            section: transitionModel!.section!,
          ),
        );
      }
    } else {
      await navigation.navigateToPageClear(
        path: transitionModel!.finishPage.page,
        data: transitionModel!.finishPage,
      );
      return;
      if (transitionModel!.actions[transitionModel!.index + 1].page ==
          NavigationConstants.QUESTION) {
        print("question page");
        print("buradaaaa");
        return;
        await navigation.navigateToPageClear(
          path: transitionModel!.actions[transitionModel!.index + 1].page
              .toString(),
          data: transitionModel!.section!,
        );
      } else {
        await navigation.navigateToPageClear(
          path: transitionModel!.finishPage.page,
          data: transitionModel!.finishPage,
        );
      }
    }
  }
}
