import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'question_answer_request.model.g.dart';

@JsonSerializable()
class QuestionAnswerRequestModel
    extends INetworkModel<QuestionAnswerRequestModel> {
  final int? section_id;
  final int? question_id;
  final int? lesson_id;
  final int? level;
  final dynamic answer;
  final bool? again;

  QuestionAnswerRequestModel({
    this.section_id,
    this.question_id,
    this.level,
    this.lesson_id,
    this.answer,
    this.again,
  });

  @override
  QuestionAnswerRequestModel fromJson(Map<String, dynamic> json) {
    return _$QuestionAnswerRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionAnswerRequestModelToJson(this);
  }
}
