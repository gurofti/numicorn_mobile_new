import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'detail_model.g.dart';

@JsonSerializable()
class DetailModel extends INetworkModel<DetailModel> {
  final int? language;
  final int? country;
  final int? source;
  final int? target;
  final int? age;
  final int? educationStatus;
  final int? level;

  DetailModel(
      {this.language,
      this.country,
      this.source,
      this.target,
      this.age,
      this.educationStatus,
      this.level});

  @override
  DetailModel fromJson(Map<String, dynamic> json) {
    return _$DetailModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$DetailModelToJson(this);
  }
}
