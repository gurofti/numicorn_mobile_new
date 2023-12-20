import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/main/level_order/model/leaders_model.dart';
import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import 'ILevelOrderService.dart';

class LevelOrderService extends ILevelOrderService with ServiceHelper {
  LevelOrderService(BuildContext context) : super(context);

  @override
  Future fetchLeaders() async {
    final response = await CoreDio().send<LeadersModel, LeadersModel>(
      NetworkRoutes.LEADERS.rawValue,
      parseModel: LeadersModel(),
      type: HttpTypes.POST,
    );
    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }
}
