// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionRequestModel _$QuestionRequestModelFromJson(
        Map<String, dynamic> json) =>
    QuestionRequestModel(
      section_id: json['section_id'] as int?,
      unit_id: json['unit_id'] as int?,
      level: json['level'] as int?,
      again: json['again'] as bool?,
      againLevel: json['againLevel'] as int?,
    );

Map<String, dynamic> _$QuestionRequestModelToJson(
        QuestionRequestModel instance) =>
    <String, dynamic>{
      'section_id': instance.section_id,
      'unit_id': instance.unit_id,
      'level': instance.level,
      'again': instance.again,
      'againLevel': instance.againLevel,
    };
