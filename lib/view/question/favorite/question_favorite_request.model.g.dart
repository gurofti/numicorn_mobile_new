// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_favorite_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionFavoriteRequestModel _$QuestionFavoriteRequestModelFromJson(
        Map<String, dynamic> json) =>
    QuestionFavoriteRequestModel(
      question_id: json['question_id'] as int?,
      section_id: json['section_id'] as int?,
    );

Map<String, dynamic> _$QuestionFavoriteRequestModelToJson(
        QuestionFavoriteRequestModel instance) =>
    <String, dynamic>{
      'question_id': instance.question_id,
      'section_id': instance.section_id,
    };
