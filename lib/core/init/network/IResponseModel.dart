abstract class IResponseModel<T> {
  T? data;
  T? error;
  int? statusCode;
}

abstract class IErrorModel<T> {
  void statusCode() {}
}

class ResponseModel<T> extends IResponseModel<T> {
  @override
  final T? data;
  @override
  final T? error;
  @override
  final int? statusCode;

  ResponseModel({this.data, this.error, this.statusCode});
}
