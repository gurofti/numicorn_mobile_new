import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/constants/navigation/navigation_constants.dart';

part 'auth_view_model.g.dart';

class AuthViewModel = _AuthViewModelBase with _$AuthViewModel;

abstract class _AuthViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.buildContext = context;
  @override
  void init() {}

  @action
  Future<void> loginPage() async {
    await navigation.navigateToPage(path: NavigationConstants.LOGIN);
  }

  @action
  Future<void> registerPage() async {
    await navigation.navigateToPage(path: NavigationConstants.REGISTER);
  }

  @observable
  String test = '';
}
