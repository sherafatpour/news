


import 'package:dio/dio.dart';
import 'package:news/util/api_request.dart';
import 'package:news/util/urls.dart';

class PostProvider {

  void getPosts({
    required Function() beforeSend,
    required Function(Response data) onSuccess,
    required Function(dynamic error, int code) onError,
  }) {

    /*var headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer " + storage.token,
    };*/
    var headers = <String, String>{'Content-Type': 'application/json; charset=UTF-8',};

   ApiRequest(Urls.postsUrl, headers).get(
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

  void getPostsOfCategory( {
    required var page,
    required var category,
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
    var url = Urls.baseUrl + Urls.postPrefix + Urls.categoryPost +category.toString() + "&"+Urls.embed+ "&"+Urls.perPage+"10"+"&"+Urls.page +page.toString();

    ApiRequest(url, headers).get(
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