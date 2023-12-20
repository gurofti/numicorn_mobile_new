import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
part 'doping_reload_view_model.g.dart';

class DopingReloadViewModel = _DopingReloadViewModelBase
    with _$DopingReloadViewModel;

abstract class _DopingReloadViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;
  @override
  void init() {}
}
