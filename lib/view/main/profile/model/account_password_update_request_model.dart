import 'package:json_annotation/json_annotation.dart';

part 'account_password_update_request_model.g.dart';

@JsonSerializable()
class AccountPasswordUpdateRequestModel {
  final String? oldPassword;
  final String? password;

  AccountPasswordUpdateRequestModel({
    this.oldPassword,
    this.password,
  });

  @override
  AccountPasswordUpdateRequestModel fromJson(Map<String, dynamic> json) {
    return _$AccountPasswordUpdateRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountPasswordUpdateRequestModelToJson(this);
  }
}
