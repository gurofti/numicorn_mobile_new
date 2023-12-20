// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_password_update_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountPasswordUpdateRequestModel _$AccountPasswordUpdateRequestModelFromJson(
        Map<String, dynamic> json) =>
    AccountPasswordUpdateRequestModel(
      oldPassword: json['oldPassword'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$AccountPasswordUpdateRequestModelToJson(
        AccountPasswordUpdateRequestModel instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'password': instance.password,
    };
