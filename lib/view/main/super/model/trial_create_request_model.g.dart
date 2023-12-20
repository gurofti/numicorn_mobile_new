// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_create_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrialCreateRequestModel _$TrialCreateRequestModelFromJson(
        Map<String, dynamic> json) =>
    TrialCreateRequestModel(
      title: json['title'] as String,
      time: json['time'] as int,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrialCreateRequestModelToJson(
        TrialCreateRequestModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'time': instance.time,
      'sections': instance.sections,
    };

SectionItemModel _$SectionItemModelFromJson(Map<String, dynamic> json) =>
    SectionItemModel(
      id: json['id'] as int,
      easy: json['easy'] as int,
      middle: json['middle'] as int,
      hard: json['hard'] as int,
    );

Map<String, dynamic> _$SectionItemModelToJson(SectionItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'easy': instance.easy,
      'middle': instance.middle,
      'hard': instance.hard,
    };
