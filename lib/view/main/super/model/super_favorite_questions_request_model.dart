import 'package:json_annotation/json_annotation.dart';

part 'super_favorite_questions_request_model.g.dart';

@JsonSerializable()
class SuperFavoriteQuestionsRequestModel {
  final int page;
  final int limit;
  // ignore: non_constant_identifier_names
  final int section_id;

  SuperFavoriteQuestionsRequestModel({
    required this.page,
    required this.limit,
    // ignore: non_constant_identifier_names
    required this.section_id,
  });

  SuperFavoriteQuestionsRequestModel fromJson(Map<String, dynamic> json) {
    return _$SuperFavoriteQuestionsRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SuperFavoriteQuestionsRequestModelToJson(this);
  }
}
