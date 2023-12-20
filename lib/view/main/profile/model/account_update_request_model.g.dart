// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_update_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountUpdateRequestModel _$AccountUpdateRequestModelFromJson(
        Map<String, dynamic> json) =>
    AccountUpdateRequestModel(
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$AccountUpdateRequestModelToJson(
        AccountUpdateRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'username': instance.username,
    };
