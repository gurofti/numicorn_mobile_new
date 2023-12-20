import 'package:flutter/material.dart';

abstract class IHomeService {
  BuildContext context;
  IHomeService(this.context);

  Future<dynamic> account();
  Future<dynamic> accountSeriesRefresh();
  Future<dynamic> homeUnits();
}
