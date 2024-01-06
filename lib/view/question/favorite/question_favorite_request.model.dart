import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'question_favorite_request.model.g.dart';

@JsonSerializable()
class QuestionFavoriteRequestModel
    extends INetworkModel<QuestionFavoriteRequestModel> {
  final int? question_id;
  final int? section_id;

  QuestionFavoriteRequestModel({
    this.question_id,
    this.section_id,
  });

  @override
  QuestionFavoriteRequestModel fromJson(Map<String, dynamic> json) {
    return _$QuestionFavoriteRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionFavoriteRequestModelToJson(this);
  }
}
