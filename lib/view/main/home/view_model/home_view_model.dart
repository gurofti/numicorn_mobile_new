import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/general/services/diamond/IDiamondService.dart';
import 'package:numicorn_mobile/view/main/general/services/diamond/diamond_service.dart';
import 'package:numicorn_mobile/view/main/general/services/diamond/model/diamond_request_model.dart';
import 'package:numicorn_mobile/view/main/home/model/account_model.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/main/home/service/IHomeService.dart';
import 'package:numicorn_mobile/view/main/home/service/home_service.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/view/main/home/view/home_view.dart';
import 'package:numicorn_mobile/view/question/view/transition/transition_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase extends BaseViewModel with Store {
  late IHomeService homeService;
  late IDiamondService diamondService;
  ScrollController scrollController = ScrollController();

  @override
  void setContext(BuildContext context) async {
    this.buildContext = context;
    homeService = HomeService(context);
    diamondService = DiamondService(context);
  }

  @override
  void init() async {
    await Future.wait([
      fetchAccountService(),
      fetchHomeUnitsService(),
    ]);
  }

  @observable
  bool loading = false;

  @observable
  bool diamondLoading = false;

  @observable
  bool seriesRefreshLoading = false;

  @observable
  int selectedLevelId = 1;

  @observable
  String selectedLevelText = '';

  @observable
  FinishPage finishPage = FinishPage(page: NavigationConstants.HOME, y: 0);

  @observable
  AccountModel? account;

  @observable
  List<UnitModel> units = [];

  @action
  Future<void> fetchAccountService() async {
    final response = await homeService.account();
    if (response != null) {
      account = await response;
    }
    if (account!.seriesRemember == true) {
      HomeView(finishPage: FinishPage(page: NavigationConstants.HOME, y: 0))
          .openSeriesWarning(
        this.buildContext!,
        account!,
        seriesContinue,
        diamondLoading,
        accountSeriesRefresh,
      );
    }
  }

  @action
  Future<void> fetchHomeUnitsService() async {
    final response = await homeService.homeUnits();
    if (response != null) {
      units = await response;
      print("scroll: " + finishPage.y.toString());
      scrollController.animateTo(finishPage.y,
          duration: Duration(milliseconds: 250), curve: Curves.ease);
    }
  }

  @action
  Future<void> questionPage(Sections data) async {
    data.again = false;
    if (selectedLevelId == 1) {
      if (data.levelEasyCompleted == data.levelEasy) {
        data.again = true;
      }
    } else if (selectedLevelId == 2) {
      if (data.levelMiddleCompleted == data.levelMiddle) {
        data.again = true;
      }
    } else if (selectedLevelId == 3) {
      if (data.levelHardCompleted == data.levelHard) {
        data.again = true;
      }
    }
    print("again: " + data.again.toString());
    data.y = scrollController.position.pixels;
    data.level = selectedLevelId;

    await navigation.navigateToPage(
        path: NavigationConstants.QUESTION, data: data);
  }

  @action
  Future<void> seriesContinue() async {
    if (!diamondLoading) {
      diamondLoading = true;
      final response = await diamondService.diamondCreate(
        DiamondRequestModel(type: 'SERIES'),
      );
      if (response.statusCode == 200) {
        Navigator.pop(this.buildContext!);
        await fetchAccountService();
      }
      diamondLoading = false;
    }
  }

  @action
  Future<void> accountSeriesRefresh() async {
    if (!seriesRefreshLoading) {
      seriesRefreshLoading = true;
      final response = await homeService.accountSeriesRefresh();
      if (response.statusCode == 200) {
        Navigator.pop(this.buildContext!);
        await fetchAccountService();
      }
      seriesRefreshLoading = false;
    }
  }
}
