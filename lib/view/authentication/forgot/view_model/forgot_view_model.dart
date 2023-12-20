import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/view/authentication/forgot/model/forgot_request_model.dart';
import 'package:numicorn_mobile/view/authentication/forgot/service/IForgotService.dart';
import 'package:numicorn_mobile/view/authentication/forgot/service/forgot_service.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/model/forgot_refresh_request_model.dart';

import '../../../../core/constants/navigation/navigation_constants.dart';

part 'forgot_view_model.g.dart';

class ForgotViewModel = _ForgotViewModelBase with _$ForgotViewModel;

abstract class _ForgotViewModelBase extends BaseViewModel with Store {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  late IForgotService forgotService;

  @override
  void setContext(BuildContext context) {
    this.buildContext = context;
    forgotService = ForgotService(context);
  }

  @override
  void init() {}

  @observable
  bool loading = false;

  @action
  Future<void> forgotCreateCode() async {
    if (formState.currentState!.validate()) {
      if (!loading) {
        loading = true;
        var response = await forgotService
            .forgotCreateCode(ForgotRequestModel(email: emailController.text));
        if (response != null) {
          forgotRefreshToPage();
        }
        loading = false;
      }
    }
  }

  @action
  Future<void> loginToPage() async {
    await navigation.navigateToPage(path: NavigationConstants.LOGIN);
  }

  @action
  Future<void> forgotRefreshToPage() async {
    await navigation.navigateToPage(
      path: NavigationConstants.FORGOT_REFRESH,
      data: ForgotRefreshRequestModel(
        email: emailController.text,
      ),
    );
  }
}
