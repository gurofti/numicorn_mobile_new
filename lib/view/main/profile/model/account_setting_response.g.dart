// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_setting_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountSettingResponse _$AccountSettingResponseFromJson(
        Map<String, dynamic> json) =>
    AccountSettingResponse(
      data: json['data'] == null
          ? null
          : AccountSettingModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AccountSettingResponseToJson(
        AccountSettingResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

AccountSettingModel _$AccountSettingModelFromJson(Map<String, dynamic> json) =>
    AccountSettingModel(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      serialProtectionReminder: json['serialProtectionReminder'] as bool?,
      marketingCampaigns: json['marketingCampaigns'] as bool?,
      productUpdates: json['productUpdates'] as bool?,
      learningTips: json['learningTips'] as bool?,
      studentAchievements: json['studentAchievements'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$AccountSettingModelToJson(
        AccountSettingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'serialProtectionReminder': instance.serialProtectionReminder,
      'marketingCampaigns': instance.marketingCampaigns,
      'productUpdates': instance.productUpdates,
      'learningTips': instance.learningTips,
      'studentAchievements': instance.studentAchievements,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
