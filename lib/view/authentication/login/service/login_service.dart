import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/authentication/_models/auth_response_model.dart';
import 'package:numicorn_mobile/view/authentication/login/model/login_model.dart';
import 'package:numicorn_mobile/view/authentication/login/service/ILoginService.dart';

import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../../core/init/network/core_dio.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';

class LoginService extends ILoginService with ServiceHelper {
  LoginService(BuildContext context) : super(context);

  @override
  Future login(LoginModel model) async {
    final response = await CoreDio().send<AuthResponseModel, AuthResponseModel>(
      NetworkRoutes.LOGIN.rawValue,
      parseModel: AuthResponseModel(),
      data: model,
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      print(response);
      return response.data;
    } else {
      print("status code: " + response.statusCode.toString());
      showMessageContext(context, response);
      return null;
    }
  }
}
