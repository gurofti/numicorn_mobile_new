// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionAnswerRequestModel _$QuestionAnswerRequestModelFromJson(
        Map<String, dynamic> json) =>
    QuestionAnswerRequestModel(
      section_id: json['section_id'] as int?,
      question_id: json['question_id'] as int?,
      level: json['level'] as int?,
      lesson_id: json['lesson_id'] as int?,
      answer: json['answer'],
      again: json['again'] as bool?,
    );

Map<String, dynamic> _$QuestionAnswerRequestModelToJson(
        QuestionAnswerRequestModel instance) =>
    <String, dynamic>{
      'section_id': instance.section_id,
      'question_id': instance.question_id,
      'lesson_id': instance.lesson_id,
      'level': instance.level,
      'answer': instance.answer,
      'again': instance.again,
    };
