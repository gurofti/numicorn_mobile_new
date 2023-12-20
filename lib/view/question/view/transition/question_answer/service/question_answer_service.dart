import 'package:numicorn_mobile/core/constants/enums/http_request_enum.dart';
import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/network/network_core/base_response.dart';
import 'package:numicorn_mobile/view/_product/_utilty/service_helper.dart';
import 'package:numicorn_mobile/view/_product/enum/network_route_enum.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/model/question_answer_request.dart';
import 'IQuestionAnswerService.dart';

class QuestionAnswerService extends IQuestionAnswerService with ServiceHelper {
  QuestionAnswerService(BuildContext context) : super(context);

  @override
  Future diamondCreate(QuestionAnswerRequestModel model) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
        NetworkRoutes.DIAMOND_CREATE.rawValue,
        parseModel: BaseResponse(),
        data: model,
        type: HttpTypes.POST);
    if (response.statusCode == 200) {
      return response;
    } else {
      return null;
    }
  }
}
