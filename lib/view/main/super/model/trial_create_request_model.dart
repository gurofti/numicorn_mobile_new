import 'package:json_annotation/json_annotation.dart';

part 'trial_create_request_model.g.dart';

@JsonSerializable()
class TrialCreateRequestModel {
  final String title;
  final int time;
  List<SectionItemModel>? sections;

  TrialCreateRequestModel({
    required this.title,
    required this.time,
    this.sections,
  });

  @override
  TrialCreateRequestModel fromJson(Map<String, dynamic> json) {
    return _$TrialCreateRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrialCreateRequestModelToJson(this);
  }
}

@JsonSerializable()
class SectionItemModel {
  final int id;
  final int easy;
  final int middle;
  final int hard;

  SectionItemModel({
    required this.id,
    required this.easy,
    required this.middle,
    required this.hard,
  });

  @override
  factory SectionItemModel.fromJson(Map<String, dynamic> json) {
    return _$SectionItemModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$SectionItemModelToJson(this);
  }
}
