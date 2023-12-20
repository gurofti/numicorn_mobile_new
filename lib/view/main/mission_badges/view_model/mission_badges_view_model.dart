import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/view/main/mission_badges/model/user_targets_model.dart';
import 'package:numicorn_mobile/view/main/mission_badges/service/IMissionService.dart';
import 'package:numicorn_mobile/view/main/mission_badges/service/mission_service.dart';

part 'mission_badges_view_model.g.dart';

class MissionBadgesViewModel = _MissionBadgesViewModelBase
    with _$MissionBadgesViewModel;

abstract class _MissionBadgesViewModelBase extends BaseViewModel with Store {
  late IMissionService missionService;

  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {
    missionService = MissionService(this.buildContext!);
  }

  @observable
  bool loading = false;

  @observable
  DataModel dataModel = DataModel();

  @action
  Future<void> fetchTargetsService() async {
    loading = false;
    final response = await missionService.fetchUserTargets();
    print("response: " + response.toString());
    if (response != null) {
      dataModel = response;
      print("response 2: " + dataModel.monthText!);
      // dataModel = response;
      // print("dataModel" + dataModel.toString());
    }
    loading = true;
  }
}
