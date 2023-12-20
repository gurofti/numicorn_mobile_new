import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/authentication/_models/auth_response_model.dart';
import 'package:numicorn_mobile/view/authentication/register/model/register_model.dart';

import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../../core/init/network/core_dio.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import 'IRegisterService.dart';

class RegisterService extends IRegisterService with ServiceHelper {
  RegisterService(BuildContext context) : super(context);

  @override
  Future register(RegisterModel model) async {
    final response = await CoreDio().send<AuthResponseModel, AuthResponseModel>(
        NetworkRoutes.REGISTER.rawValue,
        parseModel: AuthResponseModel(),
        data: model,
        type: HttpTypes.POST);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      showMessageContext(context, response);
      return null;
    }
  }
}
