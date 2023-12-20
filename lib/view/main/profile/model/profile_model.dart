import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  UserProfileModel? data;
  String? message;

  ProfileModel({this.data, this.message});

  @override
  ProfileModel fromJson(Map<String, dynamic> json) {
    return _$ProfileModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileModelToJson(this);
  }
}

@JsonSerializable()
class UserProfileModel {
  AccountModel? account;
  List<AchievementModel>? achievements;

  UserProfileModel({this.account, this.achievements});

  @override
  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return _$UserProfileModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$UserProfileModelToJson(this);
  }
}

@JsonSerializable()
class AccountModel {
  bool? seriesWarning;
  String? path;
  int? id;
  String? email;
  String? name;
  String? surname;
  String? username;
  int? language;
  int? country;
  int? source;
  int? target;
  int? level;
  int? heart;
  int? star;
  int? cup;
  int? diamond;
  int? series;
  String? seriesDate;

  AccountModel(
      {this.seriesWarning,
      this.path,
      this.id,
      this.email,
      this.name,
      this.surname,
      this.username,
      this.language,
      this.country,
      this.source,
      this.target,
      this.level,
      this.heart,
      this.star,
      this.cup,
      this.diamond,
      this.series,
      this.seriesDate});

  @override
  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return _$AccountModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountModelToJson(this);
  }
}

@JsonSerializable()
class AchievementModel {
  int? id;
  String? path;
  String? title;
  String? description;
  int? level;
  int? value;
  int? target;
  bool? status;

  AchievementModel(
      {this.id,
      this.path,
      this.title,
      this.description,
      this.level,
      this.value,
      this.target,
      this.status});

  @override
  factory AchievementModel.fromJson(Map<String, dynamic> json) {
    return _$AchievementModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AchievementModelToJson(this);
  }
}
