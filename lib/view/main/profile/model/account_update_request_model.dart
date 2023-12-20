import 'package:json_annotation/json_annotation.dart';

part 'account_update_request_model.g.dart';

@JsonSerializable()
class AccountUpdateRequestModel {
  final String? name;
  final String? surname;
  final String? email;
  final String? username;

  AccountUpdateRequestModel({
    this.name,
    this.surname,
    this.email,
    this.username,
  });

  @override
  AccountUpdateRequestModel fromJson(Map<String, dynamic> json) {
    return _$AccountUpdateRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountUpdateRequestModelToJson(this);
  }
}
