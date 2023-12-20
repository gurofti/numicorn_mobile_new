import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/view/main/level_order/model/leaders_model.dart';
import 'package:numicorn_mobile/view/main/level_order/service/ILevelOrderService.dart';
import 'package:numicorn_mobile/view/main/level_order/service/level_order_service.dart';

part 'level_order_view_model.g.dart';

class LevelOrderViewModel = _LevelOrderViewModelBase with _$LevelOrderViewModel;

abstract class _LevelOrderViewModelBase extends BaseViewModel with Store {
  late ILevelOrderService levelOrderService;

  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {
    levelOrderService = LevelOrderService(this.buildContext!);
  }

  @observable
  bool loading = false;

  @observable
  List<DataModel> leaders = [];

  @action
  Future<void> fetchLeadersService() async {
    loading = false;
    final response = await levelOrderService.fetchLeaders();
    if (response != null) {
      leaders = response;
    }
    loading = true;
  }

  String getInitials(String text) {
    List<String> words = text.split(' ');
    List<String> initialsList = [];

    for (var word in words) {
      if (word.isNotEmpty) {
        String initial = word[0].toUpperCase();
        initialsList.add(initial);
      }
    }

    return initialsList.join('');
  }
}
