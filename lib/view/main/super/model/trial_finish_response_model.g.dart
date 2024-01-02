// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_finish_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialFinishResponseModel _$TrialFinishResponseModelFromJson(
        Map<String, dynamic> json) =>
    TrialFinishResponseModel(
      data: json['data'] == null
          ? null
          : TrialFinishModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TrialFinishResponseModelToJson(
        TrialFinishResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

TrialFinishModel _$TrialFinishModelFromJson(Map<String, dynamic> json) =>
    TrialFinishModel(
      totalQuestion: json['totalQuestion'] as int?,
      trueCount: json['trueCount'] as int?,
      falseCount: json['falseCount'] as int?,
      passCount: json['passCount'] as int?,
      cup: json['cup'] as int?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => e as bool?)
          .toList(),
    );

Map<String, dynamic> _$TrialFinishModelToJson(TrialFinishModel instance) =>
    <String, dynamic>{
      'totalQuestion': instance.totalQuestion,
      'trueCount': instance.trueCount,
      'falseCount': instance.falseCount,
      'passCount': instance.passCount,
      'cup': instance.cup,
      'questions': instance.questions,
    };
