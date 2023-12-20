import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/main/general/services/diamond/model/diamond_request_model.dart';

abstract class IDiamondService {
  BuildContext context;
  IDiamondService(this.context);

  Future<dynamic> diamondCreate(DiamondRequestModel model);
}
