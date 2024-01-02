import 'package:json_annotation/json_annotation.dart';

part 'trial_question_situations_request_model.g.dart';

@JsonSerializable()
class TrialQuestionSituationsRequestModel {
  final int trial_id;

  TrialQuestionSituationsRequestModel({
    required this.trial_id,
  });

  @override
  TrialQuestionSituationsRequestModel fromJson(Map<String, dynamic> json) {
    return _$TrialQuestionSituationsRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialQuestionSituationsRequestModelToJson(this);
  }
}
