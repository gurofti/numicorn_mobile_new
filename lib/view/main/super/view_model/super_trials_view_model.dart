import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/_product/model/base/request_id_model.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_sections_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trials_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trials_response_model.dart';
import 'package:numicorn_mobile/view/main/super/service/ISuperService.dart';
import 'package:numicorn_mobile/view/main/super/service/super_service.dart';

part 'super_trials_view_model.g.dart';

class SuperTrialsViewModel = _SuperTrialsViewModelBase
    with _$SuperTrialsViewModel;

abstract class _SuperTrialsViewModelBase extends BaseViewModel with Store {
  late ISuperService superService;
  TextEditingController titleController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  final scrollController = ScrollController();

  @override
  void setContext(BuildContext context) {
    this.buildContext = context;
    superService = SuperService(context);
  }

  @override
  void init() {
    scrollController.addListener(infiniteTrials);
  }

  @action
  void infiniteTrials() {
    if (!trialsLoading && page! <= data!.totalPages!) {
      if ((scrollController.position.pixels + 120) >=
          scrollController.position.maxScrollExtent) {
        if (page <= data!.totalPages!) {
          fetchTrials();
        }
      }
    }
  }

  @observable
  ObservableList<TrialUnitModel> unitModel = ObservableList<TrialUnitModel>();

  @observable
  int totalQuestionCount = 0;

  @observable
  bool formLoading = false;

  @observable
  TrialsDataModel? data;

  @observable
  bool trialsContainerLoading = true;

  @observable
  bool trialsLoading = false;

  @observable
  ObservableList<TrialItemModel> trialItems = ObservableList<TrialItemModel>();

  @observable
  int page = 1;

  @action
  Future<void> trialResult(int trial_id) async {
    await navigation.navigateToPage(
      path: NavigationConstants.QUESTION,
      data: Sections(
        trialId: trial_id,
        trialResult: true,
      ),
    );
  }

  @action
  Future<void> trialDelete(int id) async {
    trialItems.removeWhere((item) => item.id == id);
    trialItems = trialItems;

    await superService.deleteTrial(RequestIdModel(id: id));
  }

  void removeItemWithId(List<TrialItemModel> trialItems, int id) {
    trialItems.removeWhere((item) => item.id == id);
  }

  @action
  Future<void> trialAgain(int trial_id) async {
    await navigation.navigateToPage(
      path: NavigationConstants.QUESTION,
      data: Sections(
        trialId: trial_id,
        trialResult: false,
        trialAgain: true,
      ),
    );
  }

  @action
  incrementOrDecrement(int unitIndex, int sectionIndex, int level, int type) {
    if (level == 1) {
      if (type == 1) {
        unitModel[unitIndex].sections![sectionIndex].easy += 1;
      } else {
        unitModel[unitIndex].sections![sectionIndex].easy -= 1;
      }
    } else if (level == 2) {
      if (type == 1) {
        unitModel[unitIndex].sections![sectionIndex].middle += 1;
      } else {
        unitModel[unitIndex].sections![sectionIndex].middle -= 1;
      }
    } else if (level == 3) {
      if (type == 1) {
        unitModel[unitIndex].sections![sectionIndex].hard += 1;
      } else {
        unitModel[unitIndex].sections![sectionIndex].hard -= 1;
      }
    }
  }

  ObservableList<TrialUnitModel> convertToObservableList(
      List<TrialUnitModel> list) {
    return ObservableList<TrialUnitModel>.of(list);
  }

  @action
  Future<void> fetchTrialSection() async {
    final response = await superService.fetchTrialSections();
    print(response);
    if (response != null) {
      unitModel = convertToObservableList(response);
      print("length: " + unitModel.length.toString());
    }
  }

  @action
  Future<void> fetchTrials() async {
    if (!trialsLoading) {
      trialsLoading = true;

      final response = await superService
          .fetchTrials(TrialRequestModel(page: page, limit: 7));

      if (response != null) {
        if (page == 1) {
          data = response;
        } else if (page == 2) {}
        trialItems.addAll(response!.items!);

        // trialItems = trialItems;
        // if (response!.items!.length > 0) {
        //   trialItems.addAll(response!.items!);
        // }
      }
      trialsLoading = false;
      page += 1;
    }
    trialsContainerLoading = false;
  }

  @action
  Future<void> createTrial() async {
    await navigation.navigateToPage(
        path: NavigationConstants.SUPER_TRIAL_CREATE);
  }
}
