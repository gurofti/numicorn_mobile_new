import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'question_report_error_request.model.g.dart';

@JsonSerializable()
class QuestionReportErrorRequestModel
    extends INetworkModel<QuestionReportErrorRequestModel> {
  final int? question_id;
  final String? explain;

  QuestionReportErrorRequestModel({
    this.question_id,
    this.explain,
  });

  @override
  QuestionReportErrorRequestModel fromJson(Map<String, dynamic> json) {
    return _$QuestionReportErrorRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionReportErrorRequestModelToJson(this);
  }
}
