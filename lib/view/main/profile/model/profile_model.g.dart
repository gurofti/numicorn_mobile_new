// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      data: json['data'] == null
          ? null
          : UserProfileModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      account: json['account'] == null
          ? null
          : AccountModel.fromJson(json['account'] as Map<String, dynamic>),
      achievements: (json['achievements'] as List<dynamic>?)
          ?.map((e) => AchievementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'account': instance.account,
      'achievements': instance.achievements,
    };

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) => AccountModel(
      seriesWarning: json['seriesWarning'] as bool?,
      path: json['path'] as String?,
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      username: json['username'] as String?,
      language: json['language'] as int?,
      country: json['country'] as int?,
      source: json['source'] as int?,
      target: json['target'] as int?,
      level: json['level'] as int?,
      heart: json['heart'] as int?,
      star: json['star'] as int?,
      cup: json['cup'] as int?,
      diamond: json['diamond'] as int?,
      series: json['series'] as int?,
      seriesDate: json['seriesDate'] as String?,
    );

Map<String, dynamic> _$AccountModelToJson(AccountModel instance) =>
    <String, dynamic>{
      'seriesWarning': instance.seriesWarning,
      'path': instance.path,
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'username': instance.username,
      'language': instance.language,
      'country': instance.country,
      'source': instance.source,
      'target': instance.target,
      'level': instance.level,
      'heart': instance.heart,
      'star': instance.star,
      'cup': instance.cup,
      'diamond': instance.diamond,
      'series': instance.series,
      'seriesDate': instance.seriesDate,
    };

AchievementModel _$AchievementModelFromJson(Map<String, dynamic> json) =>
    AchievementModel(
      id: json['id'] as int?,
      path: json['path'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      level: json['level'] as int?,
      value: json['value'] as int?,
      target: json['target'] as int?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$AchievementModelToJson(AchievementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'title': instance.title,
      'description': instance.description,
      'level': instance.level,
      'value': instance.value,
      'target': instance.target,
      'status': instance.status,
    };
