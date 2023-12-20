import 'package:numicorn_mobile/core/constants/enums/http_request_enum.dart';
import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/_product/enum/network_route_enum.dart';
import 'package:numicorn_mobile/view/main/general/services/diamond/model/diamond_request_model.dart';
import 'IDiamondService.dart';

class DiamondService extends IDiamondService {
  DiamondService(BuildContext context) : super(context);

  @override
  Future diamondCreate(DiamondRequestModel model) async {
    final response =
        await CoreDio().send<DiamondRequestModel, DiamondRequestModel>(
      NetworkRoutes.DIAMOND_CREATE.rawValue,
      parseModel: DiamondRequestModel(),
      data: model,
      type: HttpTypes.POST,
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      return null;
    }
  }
}
