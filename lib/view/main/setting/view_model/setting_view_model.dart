import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/core/constants/enums/locale_keys_enum.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/profile_model.dart';
import 'package:numicorn_mobile/view/main/profile/service/IProfileService.dart';
import 'package:numicorn_mobile/view/main/profile/service/profile_service.dart';

part 'setting_view_model.g.dart';

class SettingViewModel = _SettingViewModelBase with _$SettingViewModel;

abstract class _SettingViewModelBase extends BaseViewModel with Store {
  late IProfileService profileService;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
  bool formLoading = false;

  @observable
  bool isLoading = false;

  @observable
  bool isLockOpen = true;

  @observable
  UserProfileModel profileModel = UserProfileModel();

  @action
  Future<void> fetchProfileService() async {
    loading = false;
    final response = await profileService.fetchProfile();
    if (response != null) {
      profileModel = response;
      emailController.text = profileModel.account!.email!;
      nameController.text = profileModel.account!.name!;
      surnameController.text = profileModel.account!.surname!;
      userNameController.text = profileModel.account!.username!;
    }
    loading = true;
  }

  @action
  Future<void> accountUpdate() async {
    if (formState.currentState!.validate()) {
      if (!formLoading) {
        formLoading = true;
        var response = await profileService.accountUpdate(
          AccountUpdateRequestModel(
            name: nameController.text,
            surname: surnameController.text,
            email: emailController.text,
            username: userNameController.text,
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
  Future<void> logoutSession() async {
    await localeManager.clearAll();
    await loginPage();
  }

  @action
  Future<void> accountSetting() async {
    await navigation.navigateToPage(
        path: NavigationConstants.ACCOUNT_SETTING_VIEW);
  }

  @action
  Future<void> notificationSetting() async {
    await navigation.navigateToPage(
        path: NavigationConstants.NOTIFICATION_SETTING_VIEW);
  }

  @action
  Future<void> passwordChange() async {
    await navigation.navigateToPage(
        path: NavigationConstants.ACCOUNT_PASSWORD_VIEW);
  }

  @action
  Future<void> loginPage() async {
    await navigation.navigateToPageClear(path: NavigationConstants.LOGIN);
  }
}
