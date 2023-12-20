import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  final dynamic? data;
  final String? message;

  BaseResponse({this.data, this.message});

  @override
  BaseResponse fromJson(Map<String, dynamic> json) {
    return _$BaseResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$BaseResponseToJson(this);
  }
}
