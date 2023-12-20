import 'package:json_annotation/json_annotation.dart';

part 'forgot_refresh_request_model.g.dart';

@JsonSerializable()
class ForgotRefreshRequestModel {
  final String? email;
  final String? password;
  final int? code;

  ForgotRefreshRequestModel({this.email, this.code, this.password});

  @override
  ForgotRefreshRequestModel fromJson(Map<String, dynamic> json) {
    return _$ForgotRefreshRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ForgotRefreshRequestModelToJson(this);
  }
}
