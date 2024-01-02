import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';

part 'trial_questions_response_model.g.dart';

@JsonSerializable()
class TrialQuestionsResponseModel {
  final TrialQuestionsModel? data;
  final String? message;

  TrialQuestionsResponseModel({
    this.data,
    this.message,
  });

  @override
  TrialQuestionsResponseModel fromJson(Map<String, dynamic> json) {
    return _$TrialQuestionsResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialQuestionsResponseModelToJson(this);
  }
}

@JsonSerializable()
class TrialQuestionsModel {
  final TrialQuestionModel? items;
  final int? totalItems;
  final int? totalPages;
  final int? currentPage;

  TrialQuestionsModel({
    this.items,
    this.totalItems,
    this.totalPages,
    this.currentPage,
  });

  @override
  factory TrialQuestionsModel.fromJson(Map<String, dynamic> json) {
    return _$TrialQuestionsModelFromJson(json);
  }
  @override
  Map<String, dynamic> toJson() {
    return _$TrialQuestionsModelToJson(this);
  }
}

@JsonSerializable()
class TrialQuestionModel {
  final int? id;
  final int? time;
  final int? trial_id;
  final int? section_id;
  final int? question_id;
  final int? level;
  final int? status;
  final String? createdAt;
  final String? updatedAt;
  final QuestionModel? question;

  TrialQuestionModel({
    this.id,
    this.time,
    this.trial_id,
    this.section_id,
    this.question_id,
    this.level,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.question,
  });

  @override
  factory TrialQuestionModel.fromJson(Map<String, dynamic> json) {
    return _$TrialQuestionModelFromJson(json);
  }
  @override
  Map<String, dynamic> toJson() {
    return _$TrialQuestionModelToJson(this);
  }
}
