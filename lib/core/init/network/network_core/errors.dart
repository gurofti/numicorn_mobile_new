import 'package:json_annotation/json_annotation.dart';

part 'errors.g.dart';

@JsonSerializable()
class Errors {
  List<String>? error;
  String? message;

  Errors({this.error, this.message});

  static fromJson(Map<String, dynamic> json) {
    return _$ErrorsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ErrorsToJson(this);
  }
}
