import 'dart:convert';
import 'package:babystar/app/data/apis/api_models/get_login_model.dart';
import 'package:babystar/app/data/apis/api_models/simple_response_model.dart';
import 'package:http/http.dart' as http;

import '../../../common/http_methods.dart';
import '../api_constants/api_url_constants.dart';
import '../api_models/get_all_experties_Model.dart';

class ApiMethods {
  static Future<GetExpertiseAreaModel?> getExpertiseArea({
    void Function(int)? checkResponse,
    Map<String, dynamic>? bodyParams,
  }) async {
    GetExpertiseAreaModel? getExpertiseAreaModel;
    http.Response? response = await MyHttp.getMethod(
      url: ApiUrlConstants.endPointOfGetAllExpertiesModel,
      checkResponse: checkResponse,
    );
    if (response != null) {
      getExpertiseAreaModel =
          GetExpertiseAreaModel.fromJson(jsonDecode(response.body));
      return getExpertiseAreaModel;
    }
    return null;
  }

  /// Send Otp For Login...
  static Future<SimpleResponseModel?> register({
    void Function(int)? checkResponse,
    dynamic bodyParams,
  }) async {
    SimpleResponseModel? simpleResponseModel;
    http.Response? response = await MyHttp.postJsonRawMethod(
      bodyParams: bodyParams,
      url: ApiUrlConstants.endPointOfSignUp,
      checkResponse: checkResponse,
    );
    if (response != null) {
      simpleResponseModel =
          SimpleResponseModel.fromJson(jsonDecode(response.body));
      return simpleResponseModel;
    }
    return null;
  }

  static Future<SimpleResponseModel?> otpVerify({
    void Function(int)? checkResponse,
    dynamic bodyParams,
  }) async {
    SimpleResponseModel? simpleResponseModel;
    http.Response? response = await MyHttp.postJsonRawMethod(
      bodyParams: bodyParams,
      url: ApiUrlConstants.endPointOfVerifyOtp,
      checkResponse: checkResponse,
    );
    if (response != null) {
      simpleResponseModel =
          SimpleResponseModel.fromJson(jsonDecode(response.body));
      return simpleResponseModel;
    }
    return null;
  }

  /// Send Otp For Login...
  static Future<LoginResponseModel?> login({
    void Function(int)? checkResponse,
    dynamic bodyParams,
  }) async {
    LoginResponseModel? loginResponseModel;
    http.Response? response = await MyHttp.postJsonRawMethod(
      bodyParams: bodyParams,
      url: ApiUrlConstants.endPointOfLogin,
      checkResponse: checkResponse,
    );
    if (response != null) {
      loginResponseModel =
          LoginResponseModel.fromJson(jsonDecode(response.body));
      return loginResponseModel;
    }
    return null;
  }
}
