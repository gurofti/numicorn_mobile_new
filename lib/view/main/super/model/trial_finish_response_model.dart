import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/view/question/question/question_response_model.dart';

part 'trial_finish_response_model.g.dart';

@JsonSerializable()
class TrialFinishResponseModel {
  TrialFinishModel? data;
  String? message;

  TrialFinishResponseModel({this.data, this.message});

  @override
  TrialFinishResponseModel fromJson(Map<String, dynamic> json) {
    return _$TrialFinishResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialFinishResponseModelToJson(this);
  }
}

@JsonSerializable()
class TrialFinishModel {
  int? totalQuestion;
  int? trueCount;
  int? falseCount;
  int? passCount;
  int? cup;
  List<bool?>? questions;

  TrialFinishModel({
    this.totalQuestion,
    this.trueCount,
    this.falseCount,
    this.passCount,
    this.cup,
    this.questions,
  });

  @override
  factory TrialFinishModel.fromJson(Map<String, dynamic> json) {
    return _$TrialFinishModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialFinishModelToJson(this);
  }
}
