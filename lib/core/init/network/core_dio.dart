import 'dart:io';

import 'package:dio/dio.dart';

import '../../constants/enums/http_request_enum.dart';
import '../../constants/enums/locale_keys_enum.dart';
import '../../extension/network_exntension.dart';
import '../cache/locale_manager.dart';
import '../navigation/navigation_service.dart';
import 'IResponseModel.dart';
import 'Logging.dart';
import 'network_core/service_error.dart';
import 'network_core/service_error_model.dart';

part './network_core/core_operations.dart';

class CoreDio with DioMixin implements Dio {
  static const String _iosBaseUrl = 'http://localhost:4000/';
  static const String _androidBaseUrl =
      'http://localhost:4000/'; //'http://10.0.2.2:8000/';
  NavigationService navigation = NavigationService.instance;
  LocaleManager localeManager = LocaleManager.instance;

  @override
  CoreDio() {
    options = BaseOptions(
      baseUrl: Platform.isAndroid ? _androidBaseUrl : _iosBaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': "Bearer " +
            LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
      },
    );
    interceptors.add(Logging());
    httpClientAdapter = HttpClientAdapter();
  }

  Future send<R, T>(String path,
      {required HttpTypes type,
      required parseModel,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      void Function(int, int)? onReceiveProgress}) async {
    var response;

    try {
      response = await request(path,
          data: data, options: Options(method: type.rawValue));

      print("response.data: " + response.data.toString());
      switch (response.statusCode) {
        case HttpStatus.ok:
          final model = _responseParser<R, T>(parseModel, response.data);
          response =
              ResponseModel<R>(data: model, statusCode: response.statusCode);
          return response;

        default:
          response =
              ResponseModel<dynamic>(data: null, error: null, statusCode: 500);
          return response;
      }
    } on DioError catch (e) {
      print("e" + e.toString());
      if (e.response != null && e.response!.statusCode != 500) {
        if (e.response!.statusCode == 401 || e.response!.statusCode == 403) {
          print("RESPONSE: 401 OR 403");
          // await localeManager.clearAllSaveFirst();
          // await navigation.navigateToPage(path: NavigationConstants.DEFAULT);
        }
        if (e.response!.statusCode == 404) {
          print("e response");
          print(e.response!.data);
          print("-----");
          ServiceErrorModel errorModel = ServiceErrorModel(
              errors: e.response!.data, statusCode: e.response?.statusCode);
          response = errorModel;
        } else {
          ServiceErrorModel errorModel = ServiceErrorModel(
              errors: e.response!.data, statusCode: e.response?.statusCode);

          response = errorModel;
        }

        //ServiceError result = ServiceError.fromJson(e.response!.data);
        // ResponseModel<ServiceError> response = ResponseModel<ServiceError>(
        //     error: result, statusCode: e.response?.statusCode);
        // print(result);
      } else {
        response =
            ResponseModel<dynamic>(data: null, error: null, statusCode: 500);
      }
    }
    return response;
  }

  Future sendFormData({
    required String path,
    parseModel,
    dynamic data,
  }) async {
    var response;
    try {
      Dio dio = Dio(
        BaseOptions(baseUrl: _androidBaseUrl, headers: {
          'Authorization': "Bearer " +
              LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN),
          'Content-type': 'multipart/form-data'
        }),
      );
      response = await dio.post(
        path,
        data: data,
      );

      switch (response.statusCode) {
        case HttpStatus.ok:
          final model = _responseParser(parseModel, response.data);
          response =
              ResponseModel(data: model, statusCode: response.statusCode);
          return response;

        default:
          response =
              ResponseModel<dynamic>(data: null, error: null, statusCode: 500);
          return response;
      }
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode != 500) {
        ServiceError result = ServiceError.fromJson(e.response!.data);
        response = ResponseModel<ServiceError>(
            error: result, statusCode: e.response?.statusCode);
      } else {
        response =
            ResponseModel<dynamic>(data: null, error: null, statusCode: 500);
      }
    }
    return response;
  }
}
