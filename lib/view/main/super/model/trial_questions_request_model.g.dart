// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_questions_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialQuestionsRequestModel _$TrialQuestionsRequestModelFromJson(
        Map<String, dynamic> json) =>
    TrialQuestionsRequestModel(
      page: json['page'] as int,
      limit: json['limit'] as int,
      trial_id: json['trial_id'] as int,
    );

Map<String, dynamic> _$TrialQuestionsRequestModelToJson(
        TrialQuestionsRequestModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'trial_id': instance.trial_id,
    };
