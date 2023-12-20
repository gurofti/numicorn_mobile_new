import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends INetworkModel<LoginModel> {
  final String? email;
  final String? password;

  LoginModel({this.email, this.password});

  @override
  LoginModel fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LoginModelToJson(this);
  }
}
