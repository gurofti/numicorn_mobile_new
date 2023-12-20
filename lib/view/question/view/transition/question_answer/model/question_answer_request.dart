import 'package:json_annotation/json_annotation.dart';
import '../../../../../../core/init/network/INetworkModel.dart';

part 'question_answer_request.g.dart';

@JsonSerializable()
class QuestionAnswerRequestModel
    extends INetworkModel<QuestionAnswerRequestModel> {
  final int? question_id;
  final String? type;

  QuestionAnswerRequestModel({this.question_id, this.type});

  @override
  QuestionAnswerRequestModel fromJson(Map<String, dynamic> json) {
    return _$QuestionAnswerRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionAnswerRequestModelToJson(this);
  }
}
