import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';

part 'lecture_view_model.g.dart';

class LectureViewModel = _LectureViewModelBase with _$LectureViewModel;

abstract class _LectureViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {}
}
