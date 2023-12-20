import 'package:json_annotation/json_annotation.dart';

part 'forgot_request_model.g.dart';

@JsonSerializable()
class ForgotRequestModel {
  final String? email;

  ForgotRequestModel({this.email});

  @override
  ForgotRequestModel fromJson(Map<String, dynamic> json) {
    return _$ForgotRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ForgotRequestModelToJson(this);
  }
}
