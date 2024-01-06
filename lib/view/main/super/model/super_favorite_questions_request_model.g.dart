// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_favorite_questions_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperFavoriteQuestionsRequestModel _$SuperFavoriteQuestionsRequestModelFromJson(
        Map<String, dynamic> json) =>
    SuperFavoriteQuestionsRequestModel(
      page: json['page'] as int,
      limit: json['limit'] as int,
      section_id: json['section_id'] as int,
    );

Map<String, dynamic> _$SuperFavoriteQuestionsRequestModelToJson(
        SuperFavoriteQuestionsRequestModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'section_id': instance.section_id,
    };
