// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_setting_update_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountSettingUpdateRequestModel _$AccountSettingUpdateRequestModelFromJson(
        Map<String, dynamic> json) =>
    AccountSettingUpdateRequestModel(
      serialProtectionReminder: json['serialProtectionReminder'] as bool?,
      marketingCampaigns: json['marketingCampaigns'] as bool?,
      productUpdates: json['productUpdates'] as bool?,
      learningTips: json['learningTips'] as bool?,
      studentAchievements: json['studentAchievements'] as bool?,
    );

Map<String, dynamic> _$AccountSettingUpdateRequestModelToJson(
        AccountSettingUpdateRequestModel instance) =>
    <String, dynamic>{
      'serialProtectionReminder': instance.serialProtectionReminder,
      'marketingCampaigns': instance.marketingCampaigns,
      'productUpdates': instance.productUpdates,
      'learningTips': instance.learningTips,
      'studentAchievements': instance.studentAchievements,
    };
