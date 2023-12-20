import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/model/forgot_refresh_request_model.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/service/IForgotRefreshService.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/service/forgot_refresh_service.dart';

part 'forgot_refresh_view_model.g.dart';

class ForgotRefreshViewModel = _ForgotRefreshViewModelBase
    with _$ForgotRefreshViewModel;

abstract class _ForgotRefreshViewModelBase extends BaseViewModel with Store {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  late IForgotRefreshService forgotRefreshService;

  @override
  void setContext(BuildContext context) {
    this.buildContext = context;
    forgotRefreshService = ForgotRefreshService(context);
  }

  @override
  void init() {}

  @observable
  bool isLockOpen = true;

  @observable
  bool loading = false;

  @action
  Future<void> loginToPage() async {
    await navigation.navigateToPage(path: NavigationConstants.LOGIN);
  }

  @action
  Future<void> handleRefreshPassword() async {
    if (formState.currentState!.validate()) {
      if (!loading) {
        loading = true;
        var response = await forgotRefreshService.forgotRefreshPassword(
          ForgotRefreshRequestModel(
            email: emailController.text,
            code: int.parse(codeController.text),
            password: passwordController.text,
          ),
        );
        if (response != null) {
          loginPage();
        }
        loading = false;
      }
    }
  }

  @action
  Future<void> loginPage() async {
    await navigation.navigateToPageClear(path: NavigationConstants.LOGIN);
  }
}
