import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_password_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_setting_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_update_request_model.dart';

abstract class IProfileService {
  BuildContext context;
  IProfileService(this.context);

  Future<dynamic> fetchProfile();
  Future<dynamic> fetchAccountSetting();
  Future<dynamic> accountUpdate(AccountUpdateRequestModel data);
  Future<dynamic> accountSettingdUpdate(AccountSettingUpdateRequestModel data);
  Future<dynamic> accountPasswordUpdate(AccountPasswordUpdateRequestModel data);
}
