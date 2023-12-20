import 'package:json_annotation/json_annotation.dart';

part 'account_model.g.dart';

@JsonSerializable()
class AccountResponseModel {
  AccountModel? data;
  String? message;

  @override
  AccountResponseModel fromJson(Map<String, dynamic> json) {
    return _$AccountResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountResponseModelToJson(this);
  }
}

@JsonSerializable()
class AccountModel {
  int? id;
  String? email;
  String? name;
  String? surname;
  String? username;
  String? language;
  int? country;
  int? source;
  int? target;
  int? age;
  String? educationStatus;
  String? level;
  int? heart;
  int? star;
  int? diamond;
  int? series;
  bool? seriesWarning;
  bool? seriesRemember;

  AccountModel({
    this.id,
    this.email,
    this.name,
    this.surname,
    this.username,
    this.language,
    this.country,
    this.source,
    this.target,
    this.age,
    this.educationStatus,
    this.level,
    this.heart,
    this.star,
    this.diamond,
    this.series,
    this.seriesWarning,
    this.seriesRemember,
  });

  @override
  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return _$AccountModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountModelToJson(this);
  }
}
