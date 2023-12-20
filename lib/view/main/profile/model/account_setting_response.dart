import 'package:json_annotation/json_annotation.dart';

part 'account_setting_response.g.dart';

@JsonSerializable()
class AccountSettingResponse {
  AccountSettingModel? data;
  String? message;

  AccountSettingResponse({this.data, this.message});

  @override
  AccountSettingResponse fromJson(Map<String, dynamic> json) {
    return _$AccountSettingResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountSettingResponseToJson(this);
  }
}

@JsonSerializable()
class AccountSettingModel {
  int? id;
  int? user_id;
  bool? serialProtectionReminder;
  bool? marketingCampaigns;
  bool? productUpdates;
  bool? learningTips;
  bool? studentAchievements;
  String? createdAt;
  String? updatedAt;

  AccountSettingModel({
    this.id,
    this.user_id,
    this.serialProtectionReminder,
    this.marketingCampaigns,
    this.productUpdates,
    this.learningTips,
    this.studentAchievements,
    this.createdAt,
    this.updatedAt,
  });

  @override
  factory AccountSettingModel.fromJson(Map<String, dynamic> json) {
    return _$AccountSettingModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountSettingModelToJson(this);
  }
}
