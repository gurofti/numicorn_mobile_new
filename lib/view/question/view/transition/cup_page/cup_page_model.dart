import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'cup_page_model.g.dart';

@JsonSerializable()
class CupPageModel extends INetworkModel<CupPageModel> {
  final int? section_id;
  final int? unit_id;

  CupPageModel({this.section_id, this.unit_id});

  @override
  CupPageModel fromJson(Map<String, dynamic> json) {
    return _$CupPageModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CupPageModelToJson(this);
  }
}
