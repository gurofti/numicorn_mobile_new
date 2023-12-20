import 'package:flutter/material.dart';

import '../model/login_model.dart';

abstract class ILoginService {
  BuildContext context;
  ILoginService(this.context);

  Future<dynamic> login(LoginModel model);
}
