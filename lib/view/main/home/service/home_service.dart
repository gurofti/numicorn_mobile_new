import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/constants/enums/http_request_enum.dart';
import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:numicorn_mobile/core/init/network/network_core/base_response.dart';
import 'package:numicorn_mobile/view/_product/enum/network_route_enum.dart';
import 'package:numicorn_mobile/view/main/home/model/account_model.dart';
import 'package:numicorn_mobile/view/main/home/model/home_units_model.dart';

import '../../../_product/_utilty/service_helper.dart';
import 'IHomeService.dart';

class HomeService extends IHomeService with ServiceHelper {
  HomeService(BuildContext context) : super(context);

  @override
  Future account() async {
    final response =
        await CoreDio().send<AccountResponseModel, AccountResponseModel>(
      NetworkRoutes.ACCOUNT.rawValue,
      parseModel: AccountResponseModel(),
      type: HttpTypes.POST,
    );
    if (response.statusCode == 200) {
      print(response.data?.data);
      return response.data?.data;
    } else {
      showMessageContext(context, response);
      return null;
    }
  }

  @override
  Future homeUnits() async {
    final response = await CoreDio().send<HomeUnitsModel, HomeUnitsModel>(
      NetworkRoutes.HOME_UNITS.rawValue,
      parseModel: HomeUnitsModel(),
      type: HttpTypes.POST,
    );
    if (response.statusCode == 200) {
      return response.data?.data;
    } else {
      showMessageContext(context, response);
      return null;
    }
  }

  @override
  Future accountSeriesRefresh() async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.SERIES_REFRESH.rawValue,
      parseModel: BaseResponse(),
      type: HttpTypes.POST,
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      showMessageContext(context, response);
      return null;
    }
  }
}
