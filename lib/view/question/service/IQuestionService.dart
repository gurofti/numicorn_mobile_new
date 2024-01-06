import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/question/answer/question_answer_request.model.dart';
import 'package:numicorn_mobile/view/question/favorite/question_favorite_request.model.dart';
import 'package:numicorn_mobile/view/question/question/question_request.model.dart';
import 'package:numicorn_mobile/view/question/report/question_report_error_request.model.dart';

abstract class IQuestionService {
  BuildContext context;
  IQuestionService(this.context);

  Future<dynamic> question(QuestionRequestModel model);
  Future<dynamic> questionAnswer(QuestionAnswerRequestModel model);
  Future<dynamic> questionResetTest(QuestionRequestModel model);
  Future<dynamic> questionReportError(QuestionReportErrorRequestModel model);
  Future<dynamic> questionFavorite(QuestionFavoriteRequestModel model);
}
