import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/view/authentication/register/model/register_model.dart';
import 'package:numicorn_mobile/view/authentication/register/service/IRegisterService.dart';
import 'package:numicorn_mobile/view/authentication/register/service/register_service.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/constants/enums/locale_keys_enum.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';

part 'register_view_model.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase extends BaseViewModel with Store {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late IRegisterService registerService;

  @override
  void setContext(BuildContext context) {
    this.buildContext = context;
    registerService = RegisterService(context);
  }

  @override
  void init() {}

  @observable
  bool isLoading = false;

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }

  @observable
  bool isLockOpen = true;

  @observable
  bool isConfidentialityAgreement = false;

  @action
  Future<void> loginToPage() async {
    await navigation.navigateToPage(path: NavigationConstants.LOGIN);
  }

  @action
  Future<void> detailToPage() async {
    await navigation.navigateToPageClear(path: NavigationConstants.DETAIL);
  }

  @action
  Future<void> register() async {
    isLoadingChange();
    if (formState.currentState!.validate()) {
      final response = await registerService.register(RegisterModel(
        email: emailController.text,
        password: passwordController.text,
        username: userNameController.text,
      ));
      if (response != null) {
        await localeManager.setStringValue(
          PreferencesKeys.TOKEN,
          response.data.token,
        );
        await navigation.navigateToPageClear(path: NavigationConstants.AUTH);
      }
    }
    isLoadingChange();
  }
}
