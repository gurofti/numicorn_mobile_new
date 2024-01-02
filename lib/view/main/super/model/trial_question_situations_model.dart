import 'package:json_annotation/json_annotation.dart';

part 'trial_question_situations_model.g.dart';

@JsonSerializable()
class TrialQuestionSituationsResponseModel {
  String? message;
  List<bool?>? data;

  TrialQuestionSituationsResponseModel({this.data, this.message});

  @override
  TrialQuestionSituationsResponseModel fromJson(Map<String, dynamic> json) {
    return _$TrialQuestionSituationsResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialQuestionSituationsResponseModelToJson(this);
  }
}
