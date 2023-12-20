import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/network/network_core/base_response.dart';
import 'package:numicorn_mobile/view/authentication/forgot/model/forgot_request_model.dart';
import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import 'IForgotService.dart';

class ForgotService extends IForgotService with ServiceHelper {
  ForgotService(BuildContext context) : super(context);

  @override
  Future forgotCreateCode(ForgotRequestModel model) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.FORGOT_CREATE_CODE.rawValue,
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
