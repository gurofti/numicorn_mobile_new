import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:numicorn_mobile/view/authentication/detail/model/detail_model.dart';

import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import 'IDetailService.dart';

class DetailService extends IDetailService with ServiceHelper {
  DetailService(BuildContext context) : super(context);

  @override
  Future registerDetail(DetailModel model) async {
    final response = await CoreDio().send<DetailModel, DetailModel>(
        NetworkRoutes.REGISTER_DETAIL.rawValue,
        parseModel: DetailModel(),
        data: model,
        type: HttpTypes.POST);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      showMessageContext(context, response);
      return null;
    }
  }
}
