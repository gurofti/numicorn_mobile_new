import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'question_request.model.g.dart';

@JsonSerializable()
class QuestionRequestModel extends INetworkModel<QuestionRequestModel> {
  final int? section_id;
  final int? unit_id;
  final int? level;
  final bool? again;
  final int? againLevel;

  QuestionRequestModel({
    this.section_id,
    this.unit_id,
    this.level,
    this.again,
    this.againLevel,
  });

  @override
  QuestionRequestModel fromJson(Map<String, dynamic> json) {
    return _$QuestionRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionRequestModelToJson(this);
  }
}
