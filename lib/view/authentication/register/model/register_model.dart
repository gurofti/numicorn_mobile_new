import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel extends INetworkModel<RegisterModel> {
  final String? email;
  final String? password;
  final String? username;
  final String? name;
  final String? surname;

  RegisterModel({
    this.email,
    this.password,
    this.username,
    this.name,
    this.surname,
  });

  @override
  RegisterModel fromJson(Map<String, dynamic> json) {
    return _$RegisterModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterModelToJson(this);
  }
}
