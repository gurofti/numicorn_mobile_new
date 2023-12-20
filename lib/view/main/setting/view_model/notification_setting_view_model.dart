import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_setting_response.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_setting_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/service/IProfileService.dart';
import 'package:numicorn_mobile/view/main/profile/service/profile_service.dart';

part 'notification_setting_view_model.g.dart';

class NotificationSettingViewModel = _NotificationSettingViewModelBase
    with _$NotificationSettingViewModel;

abstract class _NotificationSettingViewModelBase extends BaseViewModel
    with Store {
  late IProfileService profileService;

  @override
  void setContext(BuildContext context) {
    this.buildContext = buildContext;
    profileService = ProfileService(context);
  }

  @override
  void init() {}

  @observable
  bool isLoading = false;

  @observable
  bool serialProtectionReminder = false;

  @observable
  bool marketingCampaigns = false;

  @observable
  bool productUpdates = false;

  @observable
  bool learningTips = false;

  @observable
  bool studentAchievements = false;

  @observable
  AccountSettingModel accountSettingModel = AccountSettingModel();

  @action
  Future<void> fetchAccountSettingService() async {
    isLoading = true;
    final response = await profileService.fetchAccountSetting();
    if (response != null) {
      accountSettingModel = response;
      serialProtectionReminder =
          accountSettingModel.serialProtectionReminder as bool;
      marketingCampaigns = accountSettingModel.marketingCampaigns as bool;
      productUpdates = accountSettingModel.productUpdates as bool;
      learningTips = accountSettingModel.learningTips as bool;
      studentAchievements = accountSettingModel.studentAchievements as bool;
    }
    isLoading = false;
  }

  @action
  Future<void> accountSettingdUpdate() async {
    if (!isLoading) {
      isLoading = true;
      await profileService.accountSettingdUpdate(
        AccountSettingUpdateRequestModel(
          serialProtectionReminder: serialProtectionReminder,
          marketingCampaigns: marketingCampaigns,
          productUpdates: productUpdates,
          learningTips: learningTips,
          studentAchievements: studentAchievements,
        ),
      );
      isLoading = false;
    }
  }
}
