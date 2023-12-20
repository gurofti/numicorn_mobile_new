import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
part 'super_statistics_view_model.g.dart';

class SuperStatisticsViewModel = _SuperStatisticsViewModelBase
    with _$SuperStatisticsViewModel;

abstract class _SuperStatisticsViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {}
}
