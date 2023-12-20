import 'package:flutter/material.dart';

import '../../init/network/INetworkService.dart';

abstract class ICoreService {
  final INetworkManager manager;
  final GlobalKey<ScaffoldState>? scaffoldyKey;

  ICoreService(this.manager, this.scaffoldyKey);

  Future<dynamic> fetchUserControl(model);
}
