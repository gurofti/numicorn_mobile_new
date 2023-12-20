// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) =>
    AuthResponseModel(
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AuthResponseModelToJson(AuthResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'token': instance.token,
    };
