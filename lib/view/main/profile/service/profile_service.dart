import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/network/network_core/base_response.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_password_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_setting_response.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_setting_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/account_update_request_model.dart';
import 'package:numicorn_mobile/view/main/profile/model/profile_model.dart';
import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import 'IProfileService.dart';

class ProfileService extends IProfileService with ServiceHelper {
  ProfileService(BuildContext context) : super(context);

  @override
  Future fetchProfile() async {
    final response = await CoreDio().send<ProfileModel, ProfileModel>(
      NetworkRoutes.PROFILE.rawValue,
      parseModel: ProfileModel(),
      type: HttpTypes.POST,
    );
    print("account: " + response.statusCode.toString());
    print(response.data.data.account.toString());
    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }

  @override
  Future accountUpdate(AccountUpdateRequestModel data) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.ACCOUNT_UPDATE.rawValue,
      data: data,
      parseModel: BaseResponse(),
      type: HttpTypes.POST,
    );

    showMessageContext(context, response);
    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }

  @override
  Future accountPasswordUpdate(AccountPasswordUpdateRequestModel data) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.ACCOUNT_PASSWORD_UPDATE.rawValue,
      data: data,
      parseModel: BaseResponse(),
      type: HttpTypes.POST,
    );

    showMessageContext(context, response);
    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }

  @override
  Future accountSettingdUpdate(AccountSettingUpdateRequestModel data) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.ACCOUNT_SETTING_UPDATE.rawValue,
      data: data,
      parseModel: BaseResponse(),
      type: HttpTypes.POST,
    );

    showMessageContext(context, response);
    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }

  @override
  Future fetchAccountSetting() async {
    final response =
        await CoreDio().send<AccountSettingResponse, AccountSettingResponse>(
      NetworkRoutes.ACCOUNT_SETTING.rawValue,
      parseModel: AccountSettingResponse(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }
}
