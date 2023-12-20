import 'package:json_annotation/json_annotation.dart';
import '../INetworkModel.dart';
part 'base_remove_item_model.g.dart';

@JsonSerializable()
class BaseRemoveItemModel extends INetworkModel<BaseRemoveItemModel> {
  int? id;

  BaseRemoveItemModel({this.id});

  @override
  BaseRemoveItemModel fromJson(Map<String, dynamic> json) {
    return _$BaseRemoveItemModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$BaseRemoveItemModelToJson(this);
  }
}
