import 'package:json_annotation/json_annotation.dart';

part 'request_id_model.g.dart';

@JsonSerializable()
class RequestIdModel {
  final int id;

  RequestIdModel({
    required this.id,
  });

  @override
  RequestIdModel fromJson(Map<String, dynamic> json) {
    return _$RequestIdModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RequestIdModelToJson(this);
  }
}
