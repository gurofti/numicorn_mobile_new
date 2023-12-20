import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends INetworkModel<AuthResponseModel> {
  final DataModel? data;
  final String? message;

  AuthResponseModel({this.data, this.message});

  @override
  AuthResponseModel fromJson(Map<String, dynamic> json) {
    return _$AuthResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$AuthResponseModelToJson(this);
  }
}

@JsonSerializable()
class DataModel {
  String? token;

  DataModel({this.token});

  @override
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return _$DataModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$DataModelToJson(this);
  }
}
