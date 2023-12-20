import 'package:json_annotation/json_annotation.dart';
import 'package:numicorn_mobile/core/init/network/INetworkModel.dart';

part 'account_model.g.dart';

@JsonSerializable()
class AccountModel extends INetworkModel<AccountModel> {
  @override
  AccountModel fromJson(Map<String, dynamic> json) {
    return _$AccountModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccountModelToJson(this);
  }
}
