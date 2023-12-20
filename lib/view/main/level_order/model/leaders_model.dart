import 'package:json_annotation/json_annotation.dart';

part 'leaders_model.g.dart';

@JsonSerializable()
class LeadersModel {
  List<DataModel>? data;
  String? message;

  LeadersModel({this.data, this.message});

  @override
  LeadersModel fromJson(Map<String, dynamic> json) {
    return _$LeadersModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LeadersModelToJson(this);
  }
}

@JsonSerializable()
class DataModel {
  String? path;
  int? id;
  String? name;
  String? surname;
  int? cup;
  int? country;

  DataModel(
      {this.path, this.id, this.name, this.surname, this.cup, this.country});

  @override
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return _$DataModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$DataModelToJson(this);
  }
}
