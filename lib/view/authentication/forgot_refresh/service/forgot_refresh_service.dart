import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/network/network_core/base_response.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/model/forgot_refresh_request_model.dart';
import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import 'IForgotRefreshService.dart';

class ForgotRefreshService extends IForgotRefreshService with ServiceHelper {
  ForgotRefreshService(BuildContext context) : super(context);

  @override
  Future forgotRefreshPassword(ForgotRefreshRequestModel model) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.FORGOT_REFRESH_PASSWORD.rawValue,
      parseModel: BaseResponse(),
      data: model,
      type: HttpTypes.POST,
    );

    showMessageContext(context, response);

    if (response.statusCode == 200) {
      return response;
    } else {
      return null;
    }
  }
}
