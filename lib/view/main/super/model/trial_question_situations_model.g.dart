// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_question_situations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialQuestionSituationsResponseModel
    _$TrialQuestionSituationsResponseModelFromJson(Map<String, dynamic> json) =>
        TrialQuestionSituationsResponseModel(
          data:
              (json['data'] as List<dynamic>?)?.map((e) => e as bool?).toList(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$TrialQuestionSituationsResponseModelToJson(
        TrialQuestionSituationsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
