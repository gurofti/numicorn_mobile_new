// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountResponseModel _$AccountResponseModelFromJson(
        Map<String, dynamic> json) =>
    AccountResponseModel()
      ..data = json['data'] == null
          ? null
          : AccountModel.fromJson(json['data'] as Map<String, dynamic>)
      ..message = json['message'] as String?;

Map<String, dynamic> _$AccountResponseModelToJson(
        AccountResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) => AccountModel(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      username: json['username'] as String?,
      language: json['language'] as String?,
      country: json['country'] as int?,
      source: json['source'] as int?,
      target: json['target'] as int?,
      age: json['age'] as int?,
      educationStatus: json['educationStatus'] as String?,
      level: json['level'] as String?,
      heart: json['heart'] as int?,
      star: json['star'] as int?,
      diamond: json['diamond'] as int?,
      series: json['series'] as int?,
      seriesWarning: json['seriesWarning'] as bool?,
      seriesRemember: json['seriesRemember'] as bool?,
    );

Map<String, dynamic> _$AccountModelToJson(AccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'username': instance.username,
      'language': instance.language,
      'country': instance.country,
      'source': instance.source,
      'target': instance.target,
      'age': instance.age,
      'educationStatus': instance.educationStatus,
      'level': instance.level,
      'heart': instance.heart,
      'star': instance.star,
      'diamond': instance.diamond,
      'series': instance.series,
      'seriesWarning': instance.seriesWarning,
      'seriesRemember': instance.seriesRemember,
    };
