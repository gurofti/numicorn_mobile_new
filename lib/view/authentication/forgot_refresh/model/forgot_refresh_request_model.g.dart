// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_refresh_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotRefreshRequestModel _$ForgotRefreshRequestModelFromJson(
        Map<String, dynamic> json) =>
    ForgotRefreshRequestModel(
      email: json['email'] as String?,
      code: json['code'] as int?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$ForgotRefreshRequestModelToJson(
        ForgotRefreshRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'code': instance.code,
    };
