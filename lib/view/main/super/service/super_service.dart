import 'package:numicorn_mobile/core/init/network/core_dio.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/init/network/network_core/base_response.dart';
import 'package:numicorn_mobile/view/main/_product/model/base/request_id_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_create_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_finish_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_finish_response_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_question_situations_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_question_situations_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_questions_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_questions_response_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_sections_model.dart';
import 'package:numicorn_mobile/view/main/super/model/super_wrong_questions_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/super_wrongs_model.dart';
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
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.SUPER_TRIAL_CREATE.rawValue,
      data: data,
      parseModel: BaseResponse(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("test");
      showMessageContext(context, response);
      return null;
    }
  }

  @override
  Future fetchTrialQuestions(TrialQuestionsRequestModel data) async {
    final response = await CoreDio()
        .send<TrialQuestionsResponseModel, TrialQuestionsResponseModel>(
      NetworkRoutes.SUPER_TRIAL_QUESTIONS.rawValue,
      data: data,
      parseModel: TrialQuestionsResponseModel(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("test");
      showMessageContext(context, response);
      return null;
    }
  }

  @override
  Future finishTrial(TrialFinishRequestModel data) async {
    final response = await CoreDio()
        .send<TrialFinishResponseModel, TrialFinishResponseModel>(
      NetworkRoutes.SUPER_TRIAL_FINISH.rawValue,
      data: data,
      parseModel: TrialFinishResponseModel(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("test");
      showMessageContext(context, response);
      return null;
    }
  }

  @override
  Future fetchTrialQuestionSituations(
      TrialQuestionSituationsRequestModel data) async {
    final response = await CoreDio().send<TrialQuestionSituationsResponseModel,
        TrialQuestionSituationsResponseModel>(
      NetworkRoutes.SUPER_TRIAL_QUESTION_SITUATIONS.rawValue,
      data: data,
      parseModel: TrialQuestionSituationsResponseModel(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("test");
      showMessageContext(context, response);
      return null;
    }
  }

  @override
  Future againTrial(RequestIdModel data) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.SUPER_TRIAL_AGAIN.rawValue,
      data: data,
      parseModel: BaseResponse(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("hataa");
      return null;
    }
  }

  @override
  Future deleteTrial(RequestIdModel data) async {
    final response = await CoreDio().send<BaseResponse, BaseResponse>(
      NetworkRoutes.SUPER_TRIAL_DELETE.rawValue,
      data: data,
      parseModel: BaseResponse(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("hataa");
      return null;
    }
  }

  @override
  Future fetchWrongs() async {
    final response =
        await CoreDio().send<WrongSectionsResponse, WrongSectionsResponse>(
      NetworkRoutes.SUPER_WRONGS_SECTION.rawValue,
      parseModel: WrongSectionsResponse(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("hataa");
      return null;
    }
  }

  @override
  Future fetchWrongQuestions(SuperWrongQuestionsRequestModel data) async {
    // TODO: implement fetchWrongQuestions SUPER_WRONG_QUESTIONS

    final response = await CoreDio()
        .send<TrialQuestionsResponseModel, TrialQuestionsResponseModel>(
      NetworkRoutes.SUPER_WRONG_QUESTIONS.rawValue,
      data: data,
      parseModel: TrialQuestionsResponseModel(),
      type: HttpTypes.POST,
    );

    if (response.statusCode == 200) {
      return response.data.data;
    } else {
      print("hataa");
      return null;
    }
  }

  @override
  Future fetchFavorites() {
    // TODO: implement fetchFavorites
    throw UnimplementedError();
  }
}
