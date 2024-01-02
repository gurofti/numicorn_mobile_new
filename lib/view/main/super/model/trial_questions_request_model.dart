import 'package:json_annotation/json_annotation.dart';

part 'trial_questions_request_model.g.dart';

@JsonSerializable()
class TrialQuestionsRequestModel {
  final int page;
  final int limit;
  // ignore: non_constant_identifier_names
  final int trial_id;

  TrialQuestionsRequestModel({
    required this.page,
    required this.limit,
    // ignore: non_constant_identifier_names
    required this.trial_id,
  });

  @override
  TrialQuestionsRequestModel fromJson(Map<String, dynamic> json) {
    return _$TrialQuestionsRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialQuestionsRequestModelToJson(this);
  }
}
