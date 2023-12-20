import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_create_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_sections_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trials_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trials_response_model.dart';
import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import 'ISuperService.dart';

class SuperService extends ISuperService with ServiceHelper {
  SuperService(BuildContext context) : super(context);

  @override
  Future fetchTrialSections() async {
    final response =
        await CoreDio().send<TrialSectionsModel, TrialSectionsModel>(
      NetworkRoutes.SUPER_TRIAL_SECTIONS.rawValue,
      parseModel: TrialSectionsModel(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      showMessageContext(context, response);
      return null;
    }
  }

  @override
  Future fetchTrials(TrialRequestModel data) async {
    final response =
        await CoreDio().send<TrialsResponseModel, TrialsResponseModel>(
      NetworkRoutes.SUPER_TRIALS.rawValue,
      data: data,
      parseModel: TrialsResponseModel(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }

  @override
  Future createTrial(TrialCreateRequestModel data) async {
    final response =
        await CoreDio().send<TrialsResponseModel, TrialsResponseModel>(
      NetworkRoutes.SUPER_TRIAL_CREATE.rawValue,
      data: data,
      parseModel: TrialsResponseModel(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      return null;
    }
  }
}
