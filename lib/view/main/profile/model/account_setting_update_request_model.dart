import 'package:json_annotation/json_annotation.dart';

part 'account_setting_update_request_model.g.dart';

@JsonSerializable()
class AccountSettingUpdateRequestModel {
  final bool? serialProtectionReminder;
  final bool? marketingCampaigns;
  final bool? productUpdates;
  final bool? learningTips;
  final bool? studentAchievements;

  AccountSettingUpdateRequestModel({
    this.serialProtectionReminder,
    this.marketingCampaigns,
    this.productUpdates,
    this.learningTips,
    this.studentAchievements,
  });

  @override
  AccountSettingUpdateRequestModel fromJson(Map<String, dynamic> json) {
    return _$AccountSettingUpdateRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountSettingUpdateRequestModelToJson(this);
  }
}
