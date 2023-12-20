// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
      error:
          (json['error'] as List<dynamic>?)?.map((e) => e as String).toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
    };
