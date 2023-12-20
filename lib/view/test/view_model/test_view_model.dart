import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';

part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;
  @override
  void init() {}
}
