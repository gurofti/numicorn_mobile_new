// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_finish_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialFinishRequestModel _$TrialFinishRequestModelFromJson(
        Map<String, dynamic> json) =>
    TrialFinishRequestModel(
      finish_time: json['finish_time'] as int,
      trial_id: json['trial_id'] as int,
    );

Map<String, dynamic> _$TrialFinishRequestModelToJson(
        TrialFinishRequestModel instance) =>
    <String, dynamic>{
      'finish_time': instance.finish_time,
      'trial_id': instance.trial_id,
    };
