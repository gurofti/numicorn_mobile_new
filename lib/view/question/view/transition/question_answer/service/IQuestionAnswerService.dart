import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/question/view/transition/question_answer/model/question_answer_request.dart';

abstract class IQuestionAnswerService {
  BuildContext context;
  IQuestionAnswerService(this.context);

  Future<dynamic> diamondCreate(QuestionAnswerRequestModel model);
}
