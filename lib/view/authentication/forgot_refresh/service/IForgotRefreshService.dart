import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/authentication/forgot_refresh/model/forgot_refresh_request_model.dart';
import '../model/forgot_refresh_request_model.dart';

abstract class IForgotRefreshService {
  BuildContext context;
  IForgotRefreshService(this.context);

  Future<dynamic> forgotRefreshPassword(ForgotRefreshRequestModel model);
}
