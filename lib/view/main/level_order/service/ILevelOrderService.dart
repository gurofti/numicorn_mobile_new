import 'package:flutter/material.dart';

abstract class ILevelOrderService {
  BuildContext context;
  ILevelOrderService(this.context);

  Future<dynamic> fetchLeaders();
}
