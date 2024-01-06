import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/main/super/model/super_wrongs_model.dart';
import 'package:numicorn_mobile/view/main/super/service/ISuperService.dart';
import 'package:numicorn_mobile/view/main/super/service/super_service.dart';

part 'super_wrongs_view_model.g.dart';

class SuperWrongsViewModel = _SuperWrongsViewModelBase
    with _$SuperWrongsViewModel;

abstract class _SuperWrongsViewModelBase extends BaseViewModel with Store {
  late ISuperService superService;

  @override
  void setContext(BuildContext context) {
    buildContext = context;
    superService = SuperService(context);
  }

  @override
  void init() {}

  @observable
  List<UnitsModel>? units = [];

  @action
  Future<void> fetchWrongTrialsService() async {
    final response = await superService.fetchWrongs();
    print("data 1");

    if (response != null) {
      print("data 2");
      units = response;
    }
  }

  @action
  Future<void> wrongQuestionOfSection(int sectionId) async {
    await navigation.navigateToPage(
      path: NavigationConstants.QUESTION,
      data: Sections(
        wrongSectionId: sectionId,
      ),
    );
  }
}
