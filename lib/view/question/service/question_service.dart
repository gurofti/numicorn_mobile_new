import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/network/network_core/base_response.dart';
import 'package:numicorn_mobile/view/_product/_utilty/service_helper.dart';
import 'package:numicorn_mobile/view/_product/enum/network_route_enum.dart';
import 'package:numicorn_mobile/view/question/answer/question_answer_request.model.dart';
import 'package:numicorn_mobile/view/question/favorite/question_favorite_request.model.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';
import 'package:numicorn_mobile/view/question/question/question_request.model.dart';
import 'package:numicorn_mobile/view/question/report/question_report_error_request.model.dart';
import 'package:numicorn_mobile/view/question/service/IQuestionService.dart';

import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../../core/init/network/core_dio.dart';

class QuestionService extends IQuestionService with ServiceHelper {
  QuestionService(BuildContext context) : super(context);

  @override
  Future question(QuestionRequestModel model) async {
    final response =
        await CoreDio().send<QuestionResponseModel, QuestionResponseModel>(
      NetworkRoutes.QUESTION.rawValue,
      parseModel: QuestionResponseModel(),
      data: model,
      type: HttpTypes.POST,
    );

    return response;
  }

  @override
  Future questionAnswer(QuestionAnswerRequestModel model) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.QUESTION_ANSWER.rawValue,
      parseModel: BaseResponse(),
      data: model,
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      return null;
    }
  }

  @override
  Future questionReportError(QuestionReportErrorRequestModel model) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.QUESTION_REPORT_ERROR.rawValue,
      parseModel: BaseResponse(),
      data: model,
      type: HttpTypes.POST,
    );

    showMessageContext(context, response);
    if (response.statusCode == 200) {
      return response;
    } else {
      return null;
    }
  }

  @override
  Future questionResetTest(QuestionRequestModel model) async {
    final response =
        await CoreDio().send<QuestionResponseModel, QuestionResponseModel>(
      NetworkRoutes.QUESTION_RESET_TEST.rawValue,
      parseModel: QuestionResponseModel(),
      data: model,
      type: HttpTypes.POST,
    );

    return response;
  }

  @override
  Future questionFavorite(QuestionFavoriteRequestModel model) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.QUESTION_FAVORITE.rawValue,
      parseModel: BaseResponse(),
      data: model,
      type: HttpTypes.POST,
    );

    return response;
  }
}
