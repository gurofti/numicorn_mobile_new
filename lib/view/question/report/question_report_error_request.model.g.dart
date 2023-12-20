// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_report_error_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionReportErrorRequestModel _$QuestionReportErrorRequestModelFromJson(
        Map<String, dynamic> json) =>
    QuestionReportErrorRequestModel(
      question_id: json['question_id'] as int?,
      explain: json['explain'] as String?,
    );

Map<String, dynamic> _$QuestionReportErrorRequestModelToJson(
        QuestionReportErrorRequestModel instance) =>
    <String, dynamic>{
      'question_id': instance.question_id,
      'explain': instance.explain,
    };
