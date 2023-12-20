import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_create_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_sections_model.dart';
import 'package:numicorn_mobile/view/main/super/service/ISuperService.dart';
import 'package:numicorn_mobile/view/main/super/service/super_service.dart';

part 'super_trial_create_view_model.g.dart';

class SuperTrialCreateViewModel = _SuperTrialCreateViewModelBase
    with _$SuperTrialCreateViewModel;

abstract class _SuperTrialCreateViewModelBase extends BaseViewModel with Store {
  late ISuperService superService;
  TextEditingController titleController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void setContext(BuildContext context) {
    this.buildContext = context;
    superService = SuperService(context);
  }

  @override
  void init() {}

  @observable
  ObservableList<UnitModel> unitModel = ObservableList<UnitModel>();

  @observable
  int totalQuestionCount = 0;

  @observable
  bool formLoading = false;

  @observable
  bool trialCreateLoading = false;

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

  ObservableList<UnitModel> convertToObservableList(List<UnitModel> list) {
    return ObservableList<UnitModel>.of(list);
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
  void trialCreate() {
    if (formState.currentState!.validate()) {
      if (!trialCreateLoading) {
        trialCreateLoading = true;

        TrialCreateRequestModel model = TrialCreateRequestModel(
          title: titleController.text,
          time: int.parse(
            timeController.text,
          ),
        );
        List<SectionItemModel> sections = [];
        unitModel.forEach((element) {
          element.sections!.forEach((section) {
            if (section.easy != 0 || section.middle != 0 || section.hard != 0) {
              sections.add(
                SectionItemModel(
                  id: section.id!,
                  easy: section.easy,
                  middle: section.middle,
                  hard: section.hard,
                ),
              );
            }
          });
        });
        model.sections = sections;

        superService.createTrial(model);
      }
    }
    trialCreateLoading = false;
  }
}
