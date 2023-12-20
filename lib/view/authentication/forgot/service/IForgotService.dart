import 'package:flutter/material.dart';
import '../model/forgot_request_model.dart';

abstract class IForgotService {
  BuildContext context;
  IForgotService(this.context);

  Future<dynamic> forgotCreateCode(ForgotRequestModel model);
}
