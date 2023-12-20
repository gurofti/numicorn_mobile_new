import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';

part 'potion_view_model.g.dart';

class PotionViewModel = _PotionViewModelBase with _$PotionViewModel;

abstract class _PotionViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {}
}
