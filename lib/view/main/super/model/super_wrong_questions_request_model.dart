import 'package:json_annotation/json_annotation.dart';

part 'super_wrong_questions_request_model.g.dart';

@JsonSerializable()
class SuperWrongQuestionsRequestModel {
  final int page;
  final int limit;
  // ignore: non_constant_identifier_names
  final int section_id;

  SuperWrongQuestionsRequestModel({
    required this.page,
    required this.limit,
    // ignore: non_constant_identifier_names
    required this.section_id,
  });

  SuperWrongQuestionsRequestModel fromJson(Map<String, dynamic> json) {
    return _$SuperWrongQuestionsRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SuperWrongQuestionsRequestModelToJson(this);
  }
}
