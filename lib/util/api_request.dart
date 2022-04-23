

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:news/models/dio/dio_exeption_model.dart';
import 'package:news/util/dio_exception.dart';


class ApiRequest {
  late String url;
  late Map<String, dynamic> headers;

  static final ApiRequest _instance = ApiRequest._();

  ApiRequest._();

  factory ApiRequest(String url,Map<String, dynamic> headers ) {
    _instance.url = url;
    _instance.headers = headers;
    return _instance;
  }

  Dio _dio() {
    return Dio(BaseOptions(headers: headers, receiveDataWhenStatusError: true,
      connectTimeout: 30*1000, // 30 seconds
      // receiveTimeout: 30*1000 // 30 seconds));
    ));}

  void get({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error, int code) onError,
  }) {
    _dio().get(url).then((res) {

      try {
        onSuccess(res);
      } on DioError catch (e) {
        DioExceptionModel dError=  DioExceptions().networkHandler(e);
        onError(dError.message,dError.code!);


      }}).catchError((error,stack){

      DioExceptionModel dError=  DioExceptions().networkHandler(error);
      onError(dError.message,dError.code!);


    });

  }

  void upload(
      {required Future<MultipartFile> multipartFile,
        required Function() beforeSend,
        required Function(dynamic data) onSuccess,
        required Function(dynamic error, int code) onError,
        required Function(int sent, int total) onSendProgress}) async {
    FormData formData = FormData.fromMap({"file": multipartFile});
    _dio()
        .post(url, data: formData, onSendProgress: onSendProgress)
        .then((res) {
      try {
        onSuccess(res);
      } on DioError catch (e) {
        DioExceptionModel dError=  DioExceptions().networkHandler(e);
        onError(dError.message,dError.code!);


      }}).catchError((error,stack){

      DioExceptionModel dError=  DioExceptions().networkHandler(error);
      onError(dError.message,dError.code!);


    });
  }

  void post({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error, int code) onError,
    required Map<String, dynamic> data,
  }) {
    _dio().post(url, data: jsonEncode(data)).then((res) {
      onSuccess(res);
    }).catchError((error) {
      DioExceptionModel dError=  DioExceptions().networkHandler(error);
      onError(dError.message,dError.code!);
    }).catchError((error,stack){

      DioExceptionModel dError=  DioExceptions().networkHandler(error);
      onError(dError.message,dError.code!);


    });
  }

  void put(
      {required Function() beforeSend,
        required Function(dynamic data) onSuccess,
        required Function(dynamic error, int code) onError,
        required Map<String, dynamic> data}) {
    _dio().put(url, data: jsonEncode(data)).then((res) {

      onSuccess(res);
    } ).catchError((error) {
      DioExceptionModel dError=  DioExceptions().networkHandler(error);
      onError(dError.message,dError.code!);
    }).catchError((error,stack){

      DioExceptionModel dError=  DioExceptions().networkHandler(error);
      onError(dError.message,dError.code!);


    });}

}
