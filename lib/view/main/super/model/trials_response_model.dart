import 'package:json_annotation/json_annotation.dart';

part 'trials_response_model.g.dart';

@JsonSerializable()
class TrialsResponseModel {
  final TrialsDataModel? data;
  final String? message;

  TrialsResponseModel({this.data, this.message});

  TrialsResponseModel fromJson(Map<String, dynamic> json) {
    return _$TrialsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TrialsResponseModelToJson(this);
  }
}

@JsonSerializable()
class TrialsDataModel {
  final List<TrialItemModel>? items;
  final int? totalItems;
  final int? totalPages;
  final int? currentPage;

  TrialsDataModel({
    this.items,
    this.totalItems,
    this.totalPages,
    this.currentPage,
  });

  factory TrialsDataModel.fromJson(Map<String, dynamic> json) =>
      _$TrialsDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrialsDataModelToJson(this);
}

@JsonSerializable()
class TrialItemModel {
  final int? id;
  @JsonKey(name: 'user_id')
  final int? userId;
  final String? title;
  final int? time;
  final String? passQuestionCount;
  final String? trueQuestionCount;
  final String? falseQuestionCount;
  @JsonKey(name: 'finish_time')
  final int? finishTime;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  final String? updatedAt;

  TrialItemModel({
    this.id,
    this.userId,
    this.title,
    this.time,
    this.finishTime,
    this.passQuestionCount,
    this.trueQuestionCount,
    this.falseQuestionCount,
    this.createdAt,
    this.updatedAt,
  });

  factory TrialItemModel.fromJson(Map<String, dynamic> json) =>
      _$TrialItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrialItemModelToJson(this);
}
