import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/main/_product/model/base/request_id_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_create_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_finish_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_question_situations_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trial_questions_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/super_wrong_questions_request_model.dart';
import 'package:numicorn_mobile/view/main/super/model/trials_request_model.dart';

abstract class ISuperService {
  BuildContext context;
  ISuperService(this.context);

  Future<dynamic> fetchTrialSections();
  Future<dynamic> createTrial(TrialCreateRequestModel data);
  Future<dynamic> againTrial(RequestIdModel data);
  Future<dynamic> deleteTrial(RequestIdModel data);
  Future<dynamic> fetchTrials(TrialRequestModel trialRequestModel);
  Future<dynamic> fetchWrongs();
  Future<dynamic> fetchFavorites();
  Future<dynamic> fetchTrialQuestions(TrialQuestionsRequestModel data);
  Future<dynamic> fetchWrongQuestions(SuperWrongQuestionsRequestModel data);
  Future<dynamic> finishTrial(TrialFinishRequestModel data);
  Future<dynamic> fetchTrialQuestionSituations(
      TrialQuestionSituationsRequestModel data);
}
