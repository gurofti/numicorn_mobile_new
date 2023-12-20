import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/view/authentication/detail/model/detail_model.dart';
import 'package:numicorn_mobile/view/authentication/detail/service/IDetailService.dart';
import 'package:numicorn_mobile/view/authentication/detail/service/detail_service.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/constants/navigation/navigation_constants.dart';

part 'detail_view_model.g.dart';

class DetailViewModel = _DetailViewModelBase with _$DetailViewModel;

abstract class _DetailViewModelBase extends BaseViewModel with Store {
  late IDetailService detailService;

  @override
  void setContext(BuildContext context) {
    this.buildContext = context;
    detailService = DetailService(context);
  }

  @override
  void init() {}

  @observable
  int stepIndex = 1;

  @observable
  bool stepStatus = false;

  @observable
  int checkLanguage = 0;

  @observable
  int checkCountry = 0;

  @observable
  int checkSource = 0;

  @observable
  int checkTarget = 0;

  @observable
  int checkAge = 0;

  @observable
  int checkEducationStatus = 0;

  @observable
  int checkLevel = 0;

  @observable
  bool isLoading = false;

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }

  // @observable
  // Object data = [
  //   'language' null, 'country': null
  // ];

  @action
  void changeStepStatus(bool value) {
    stepStatus = value;
  }

  @action
  Future<void> stepNext() async {
    print("stepStatus: ${stepIndex}");
    if (stepIndex == 7) {
      print("Detail completed");
      isLoadingChange();
      final response = await detailService.registerDetail(
        DetailModel(
          language: checkLanguage,
          country: checkCountry,
          source: checkSource,
          target: checkTarget,
          age: checkAge,
          educationStatus: checkEducationStatus,
          level: checkLevel,
        ),
      );
      if (response != null) {
        await navigation.navigateToPageClear(path: NavigationConstants.HOME);
      }
      isLoadingChange();
    } else {
      stepIndex += 1;
      stepStatus = false;
    }

    print("Data: checkLanguage: ${checkLanguage.toString()}");
    print("Data: checkCountry: ${checkCountry.toString()}");
    print("Data: checkSource: ${checkSource.toString()}");
    print("Data: checkTarget: ${checkTarget.toString()}");
    print("Data: checkAge: ${checkAge.toString()}");
    print("Data: checkEducationStatus: ${checkEducationStatus.toString()}");
    print("Data: checkLevel: ${checkLevel.toString()}");
  }

  @action
  Future<void> registerDetailService(DetailModel model) async {
    isLoadingChange();
    final response = await detailService.registerDetail(model);
    print(response.data.data);
    if (response != null) {}
    isLoadingChange();
  }
}
