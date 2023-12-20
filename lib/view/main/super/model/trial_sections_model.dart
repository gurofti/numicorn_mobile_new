import 'package:json_annotation/json_annotation.dart';

part 'trial_sections_model.g.dart';

@JsonSerializable()
class TrialSectionsModel {
  List<UnitModel>? data;
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
class UnitModel {
  int? id;
  String? title;
  String? description;
  int? listNo;
  int? langId;
  List<SectionsModel>? sections;

  UnitModel({
    this.id,
    this.title,
    this.description,
    this.listNo,
    this.langId,
    this.sections,
  });

  @override
  factory UnitModel.fromJson(Map<String, dynamic> json) {
    return _$UnitModelFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$UnitModelToJson(this);
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
