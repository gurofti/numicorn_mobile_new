// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeadersModel _$LeadersModelFromJson(Map<String, dynamic> json) => LeadersModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LeadersModelToJson(LeadersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      path: json['path'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      cup: json['cup'] as int?,
      country: json['country'] as int?,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'cup': instance.cup,
      'country': instance.country,
    };
