import 'package:json_annotation/json_annotation.dart';

part 'trial_finish_request_model.g.dart';

@JsonSerializable()
class TrialFinishRequestModel {
  final int finish_time;
  final int trial_id;

  TrialFinishRequestModel({
    required this.finish_time,
    required this.trial_id,
  });

  @override
  TrialFinishRequestModel fromJson(Map<String, dynamic> json) {
    return _$TrialFinishRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialFinishRequestModelToJson(this);
  }
}
