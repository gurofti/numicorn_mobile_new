import 'package:json_annotation/json_annotation.dart';

part 'service_error.g.dart';

@JsonSerializable()
class ServiceError {
  Object? errors;

  ServiceError({this.errors});

  factory ServiceError.fromJson(Map<String, dynamic> json) =>
      _$ServiceErrorFromJson(json);

  // factory ServiceError.fromJson(Map<String, dynamic> json) {
  //   return _$ServiceErrorFromJson(json);
  // }

  Map<String, dynamic> toJson() {
    return _$ServiceErrorToJson(this);
  }
}
