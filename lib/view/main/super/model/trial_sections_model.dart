import 'package:json_annotation/json_annotation.dart';

part 'trial_sections_model.g.dart';

@JsonSerializable()
class TrialSectionsModel {
  List<TrialUnitModel>? data;
  String? message;

  TrialSectionsModel({this.data, this.message});

  TrialSectionsModel fromJson(Map<String, dynamic> json) {
    return _$TrialSectionsModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TrialSectionsModelToJson(this);
  }
}

@JsonSerializable()
class TrialUnitModel {
  int? id;
  String? title;
  String? description;
  int? listNo;
  int? langId;
  List<SectionsModel>? sections;

  TrialUnitModel({
    this.id,
    this.title,
    this.description,
    this.listNo,
    this.langId,
    this.sections,
  });

  @override
  factory TrialUnitModel.fromJson(Map<String, dynamic> json) {
    return _$TrialUnitModelFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$TrialUnitModelToJson(this);
  }
}

@JsonSerializable()
class SectionsModel {
  String? path;
  int? id;
  int? unitId;
  String? title;
  int? listNo;
  String? url;
  int easy = 0;
  int middle = 0;
  int hard = 0;

  SectionsModel({
    this.path,
    this.id,
    this.unitId,
    this.title,
    this.listNo,
    this.url,
    this.easy = 0,
    this.middle = 0,
    this.hard = 0,
  });

  @override
  factory SectionsModel.fromJson(Map<String, dynamic> json) {
    return _$SectionsModelFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$SectionsModelToJson(this);
  }
}
