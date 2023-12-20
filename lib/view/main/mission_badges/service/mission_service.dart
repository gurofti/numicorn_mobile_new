import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/constants/enums/http_request_enum.dart';
import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:numicorn_mobile/view/_product/enum/network_route_enum.dart';
import 'package:numicorn_mobile/view/main/mission_badges/model/user_targets_model.dart';

import '../../../_product/_utilty/service_helper.dart';
import 'IMissionService.dart';

class MissionService extends IMissionService with ServiceHelper {
  MissionService(BuildContext context) : super(context);

  @override
  Future fetchUserTargets() async {
    final response = await CoreDio().send<UserTargetsModel, UserTargetsModel>(
      NetworkRoutes.USER_TARGETS.rawValue,
      parseModel: UserTargetsModel(),
      type: HttpTypes.POST,
    );
    if (response.statusCode == 200) {
      return response.data?.data;
    } else {
      return null;
    }
  }
}
