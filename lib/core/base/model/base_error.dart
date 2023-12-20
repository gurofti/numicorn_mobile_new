import '../../init/network/IResponseModel.dart';

class BaseError extends IErrorModel {
  final String errors;

  BaseError(this.errors);
}
