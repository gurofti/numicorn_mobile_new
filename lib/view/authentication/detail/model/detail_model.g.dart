// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailModel _$DetailModelFromJson(Map<String, dynamic> json) => DetailModel(
      language: json['language'] as int?,
      country: json['country'] as int?,
      source: json['source'] as int?,
      target: json['target'] as int?,
      age: json['age'] as int?,
      educationStatus: json['educationStatus'] as int?,
      level: json['level'] as int?,
    );

Map<String, dynamic> _$DetailModelToJson(DetailModel instance) =>
    <String, dynamic>{
      'language': instance.language,
      'country': instance.country,
      'source': instance.source,
      'target': instance.target,
      'age': instance.age,
      'educationStatus': instance.educationStatus,
      'level': instance.level,
    };
