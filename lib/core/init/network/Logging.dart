import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Logging extends Interceptor {
  late GlobalKey<ScaffoldState> scaffoldyKey;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    GlobalKey<ScaffoldState> scaffoldyKey;
    return super.onError(err, handler);
  }
}
