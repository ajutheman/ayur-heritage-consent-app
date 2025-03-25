import 'dart:convert';


import 'package:dio/dio.dart';

class ApiClient {
  static String baseUrl = "";
  final Dio dio = Dio();

  ApiClient() {

    if(!baseUrl.endsWith("/"))
    {
      baseUrl = "$baseUrl/";
    }

    dio.options.baseUrl = baseUrl; // 5 seconds
    // 5 seconds
  }

  Future<ApiResponseModel> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.get(endpoint, queryParameters: queryParameters);
          var result =  jsonDecode(response.toString());
          return ApiResponseModel(true,result);
    } catch (e) {
    return ApiResponseModel(false,e);
    }
  }

  Future<ApiResponseModel> post(String endpoint, {Map<String, dynamic>? data}) async {
    try 
    {
      final response = await dio.post(endpoint, data: data);
      var result= jsonDecode(response.toString());
      return ApiResponseModel(true,result);
    } 
    catch (e) 
    {
     return ApiResponseModel(false,e);
    }
  }

  Future<ApiResponseModel> postString(String endpoint, String data) async {
    try {
        final response = await dio.post(endpoint, data: data);
            var result= jsonDecode(response.toString());
            return ApiResponseModel(true,result);
         } 
         catch (e) 
         {
          return ApiResponseModel(false,e);
        }
  }

  Future<ApiResponseModel> submitConsent(String endpoint, String data) async {
    try {
        final response = await dio.post(endpoint, data: data);
          var result = jsonEncode(response.data);
          return ApiResponseModel(true,result);
         } 
         catch (e) 
         {
          return ApiResponseModel(false,e);
        }
  }

  
}

class ApiResponseModel {
  bool isSuccess;
  dynamic result;
  ApiResponseModel(this.isSuccess,this.result); 
}

