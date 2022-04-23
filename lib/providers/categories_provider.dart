import 'package:dio/dio.dart';
import 'package:news/util/api_request.dart';
import 'package:news/util/urls.dart';

class CategoriesProvider {

  void getCategories({
    required Function() beforeSend,
    required Function(Response data) onSuccess,
    required Function(dynamic error, int code) onError,
  }) {

    /*var headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer " + storage.token,
    };*/
    var headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    ApiRequest(Urls.categoriesUrl, headers).get(
        beforeSend: () => beforeSend(),
        onSuccess: (data) {
          try {
            onSuccess(data);
          } catch (e) {
            onError(e.toString(), 100);
          }
        },
        onError: (error, int code) => onError(error, code));
  }





}

