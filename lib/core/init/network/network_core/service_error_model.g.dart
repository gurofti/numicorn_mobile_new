// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceErrorModel _$ServiceErrorModelFromJson(Map<String, dynamic> json) =>
    ServiceErrorModel(
      errors: json['errors'],
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$ServiceErrorModelToJson(ServiceErrorModel instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'statusCode': instance.statusCode,
    };
