import 'package:flutter/material.dart';

import '../model/register_model.dart';

abstract class IRegisterService {
  BuildContext context;
  IRegisterService(this.context);

  Future<dynamic> register(RegisterModel model);
}
