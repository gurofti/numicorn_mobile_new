// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionAnswerRequestModel _$QuestionAnswerRequestModelFromJson(
        Map<String, dynamic> json) =>
    QuestionAnswerRequestModel(
      question_id: json['question_id'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$QuestionAnswerRequestModelToJson(
        QuestionAnswerRequestModel instance) =>
    <String, dynamic>{
      'question_id': instance.question_id,
      'type': instance.type,
    };
