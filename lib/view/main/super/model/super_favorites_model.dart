import 'package:json_annotation/json_annotation.dart';

part 'super_favorites_model.g.dart';

@JsonSerializable()
class FavoriteSectionsResponse {
  List<UnitsModel>? data;
  String? message;

  FavoriteSectionsResponse({this.data, this.message});

  @override
  FavoriteSectionsResponse fromJson(Map<String, dynamic> json) {
    return _$FavoriteSectionsResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FavoriteSectionsResponseToJson(this);
  }
}

@JsonSerializable()
class UnitsModel {
  int? id;
  String? title;
  String? description;
  int? listNo;
  int? langId;
  Lang? lang;
  List<SectionsModel>? sections;

  UnitsModel(
      {this.id,
      this.title,
      this.description,
      this.listNo,
      this.langId,
      this.lang,
      this.sections});

  @override
  factory UnitsModel.fromJson(Map<String, dynamic> json) {
    return _$UnitsModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$UnitsModelToJson(this);
  }
}

@JsonSerializable()
class Lang {
  int? id;
  String? name;
  String? slug;

  Lang({this.id, this.name, this.slug});

  @override
  factory Lang.fromJson(Map<String, dynamic> json) {
    return _$LangFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LangToJson(this);
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
  String? favoriteQuestionCount;

  SectionsModel({
    this.path,
    this.id,
    this.unitId,
    this.title,
    this.listNo,
    this.url,
    this.favoriteQuestionCount,
  });

  @override
  factory SectionsModel.fromJson(Map<String, dynamic> json) {
    return _$SectionsModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$SectionsModelToJson(this);
  }
}
