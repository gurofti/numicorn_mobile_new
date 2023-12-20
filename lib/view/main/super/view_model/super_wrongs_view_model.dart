import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';

part 'super_wrongs_view_model.g.dart';

class SuperWrongsViewModel = _SuperWrongsViewModelBase
    with _$SuperWrongsViewModel;

abstract class _SuperWrongsViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;
  @override
  void init() {}
}
