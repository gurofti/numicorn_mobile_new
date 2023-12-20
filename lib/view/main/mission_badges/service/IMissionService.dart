import 'package:flutter/material.dart';

abstract class IMissionService {
  BuildContext context;
  IMissionService(this.context);

  Future<dynamic> fetchUserTargets();
}
