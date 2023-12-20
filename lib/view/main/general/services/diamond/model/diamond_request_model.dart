import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'diamond_request_model.g.dart';

@JsonSerializable()
class DiamondRequestModel extends INetworkModel<DiamondRequestModel> {
  String? type;

  DiamondRequestModel({this.type});

  @override
  DiamondRequestModel fromJson(Map<String, dynamic> json) {
    return _$DiamondRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$DiamondRequestModelToJson(this);
  }
}
