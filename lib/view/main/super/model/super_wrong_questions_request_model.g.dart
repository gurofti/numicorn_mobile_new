// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_wrong_questions_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperWrongQuestionsRequestModel _$SuperWrongQuestionsRequestModelFromJson(
        Map<String, dynamic> json) =>
    SuperWrongQuestionsRequestModel(
      page: json['page'] as int,
      limit: json['limit'] as int,
      section_id: json['section_id'] as int,
    );

Map<String, dynamic> _$SuperWrongQuestionsRequestModelToJson(
        SuperWrongQuestionsRequestModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'section_id': instance.section_id,
    };
