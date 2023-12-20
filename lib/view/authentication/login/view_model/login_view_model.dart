import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/view/authentication/login/model/login_model.dart';
import 'package:numicorn_mobile/view/authentication/login/service/ILoginService.dart';
import 'package:numicorn_mobile/view/authentication/login/service/login_service.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/constants/enums/locale_keys_enum.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase extends BaseViewModel with Store {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  TextEditingController emailOrUserNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late ILoginService loginService;

  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {
    loginService = LoginService(this.buildContext!);
  }

  @observable
  bool isLoading = false;

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }

  @observable
  bool isLockOpen = true;

  @action
  Future<void> registerToPage() async {
    await navigation.navigateToPage(path: NavigationConstants.REGISTER);
  }

  @action
  Future<void> forgotToPage() async {
    await navigation.navigateToPage(path: NavigationConstants.FORGOT);
  }

  @action
  Future<void> homeToPage() async {
    await navigation.navigateToPage(path: NavigationConstants.HOME);
  }

  @action
  Future<void> login() async {
    isLoadingChange();
    if (formState.currentState!.validate()) {
      final response = await loginService.login(
        LoginModel(
          email: emailOrUserNameController.text,
          password: passwordController.text,
        ),
      );
      if (response != null) {
        await localeManager.setStringValue(
            PreferencesKeys.TOKEN, response.data.token);
        await navigation.navigateToPageClear(path: NavigationConstants.AUTH);
      }
    }
    isLoadingChange();
  }
}
