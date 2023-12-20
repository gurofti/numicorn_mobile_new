import 'package:json_annotation/json_annotation.dart';

part 'trials_request_model.g.dart';

@JsonSerializable()
class TrialRequestModel {
  final int? page;
  final int? limit;

  TrialRequestModel({
    this.page,
    this.limit,
  });

  @override
  TrialRequestModel fromJson(Map<String, dynamic> json) {
    return _$TrialRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialRequestModelToJson(this);
  }
}
