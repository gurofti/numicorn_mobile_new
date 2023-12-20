import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_password_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/profile_model.dart';
import 'package:numicorn_mobile/view/main/profile/service/IProfileService.dart';
import 'package:numicorn_mobile/view/main/profile/service/profile_service.dart';

part 'account_password_view_model.g.dart';

class AccountPasswordViewModel = _AccountPasswordViewModelBase
    with _$AccountPasswordViewModel;

abstract class _AccountPasswordViewModelBase extends BaseViewModel with Store {
  late IProfileService profileService;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void setContext(BuildContext context) {
    this.buildContext = context;
    profileService = ProfileService(context);
  }

  @override
  void init() {}

  @observable
  bool loading = false;

  @observable
  bool isLoading = false;

  @observable
  bool formLoading = false;

  @observable
  bool isLockOpen = true;

  @observable
  UserProfileModel profileModel = UserProfileModel();

  @action
  Future<void> accountPasswordUpdate() async {
    if (formState.currentState!.validate()) {
      if (!formLoading) {
        formLoading = true;
        var response = await profileService.accountPasswordUpdate(
          AccountPasswordUpdateRequestModel(
            oldPassword: oldPasswordController.text,
            password: passwordController.text,
          ),
        );
        if (response != null) {
          print("success");
        }
        formLoading = false;
      }
    }
  }

  @action
  Future<void> accountSetting() async {
    await navigation.navigateToPage(
        path: NavigationConstants.ACCOUNT_SETTING_VIEW);
  }

  @action
  Future<void> passwordChange() async {
    await navigation.navigateToPage(
        path: NavigationConstants.ACCOUNT_PASSWORD_VIEW);
  }
}
