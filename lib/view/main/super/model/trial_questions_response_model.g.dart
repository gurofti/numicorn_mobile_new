// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_questions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialQuestionsResponseModel _$TrialQuestionsResponseModelFromJson(
        Map<String, dynamic> json) =>
    TrialQuestionsResponseModel(
      data: json['data'] == null
          ? null
          : TrialQuestionsModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TrialQuestionsResponseModelToJson(
        TrialQuestionsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

TrialQuestionsModel _$TrialQuestionsModelFromJson(Map<String, dynamic> json) =>
    TrialQuestionsModel(
      items: json['items'] == null
          ? null
          : TrialQuestionModel.fromJson(json['items'] as Map<String, dynamic>),
      totalItems: json['totalItems'] as int?,
      totalPages: json['totalPages'] as int?,
      currentPage: json['currentPage'] as int?,
    );

Map<String, dynamic> _$TrialQuestionsModelToJson(
        TrialQuestionsModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
    };

TrialQuestionModel _$TrialQuestionModelFromJson(Map<String, dynamic> json) =>
    TrialQuestionModel(
      id: json['id'] as int?,
      time: json['time'] as int?,
      trial_id: json['trial_id'] as int?,
      section_id: json['section_id'] as int?,
      question_id: json['question_id'] as int?,
      level: json['level'] as int?,
      status: json['status'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      question: json['question'] == null
          ? null
          : QuestionModel.fromJson(json['question'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrialQuestionModelToJson(TrialQuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'trial_id': instance.trial_id,
      'section_id': instance.section_id,
      'question_id': instance.question_id,
      'level': instance.level,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'question': instance.question,
    };
