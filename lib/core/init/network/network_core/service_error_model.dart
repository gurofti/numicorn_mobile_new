import 'package:json_annotation/json_annotation.dart';
part 'service_error_model.g.dart';

@JsonSerializable()
class ServiceErrorModel {
  dynamic? errors;
  int? statusCode;

  ServiceErrorModel({this.errors, this.statusCode});

  @override
  ServiceErrorModel fromJson(Map<String, dynamic> json) {
    return _$ServiceErrorModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceErrorModelToJson(this);
  }
}
