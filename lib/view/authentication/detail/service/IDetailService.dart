import 'package:flutter/material.dart';

import '../model/detail_model.dart';

abstract class IDetailService {
  BuildContext context;
  IDetailService(this.context);

  Future<dynamic> registerDetail(DetailModel model);
}
