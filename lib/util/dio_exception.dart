import 'package:dio/dio.dart';
import 'package:news/models/dio_exeption_model.dart';

class DioExceptions implements Exception{


  DioExceptionModel networkHandler(DioError dioError){
    switch(dioError.type){
      case DioErrorType.cancel:

        return  DioExceptionModel(message: "درخواست شما لغو شد!",code: 1);

      case DioErrorType.connectTimeout:
        return  DioExceptionModel(message: "درخواست شما لغو شد!",code: 2);

      case DioErrorType.receiveTimeout:
        return  DioExceptionModel(message: "دریافت اطلاعات با مشکل مواجه شد!",code:2);

      case DioErrorType.sendTimeout:
        return  DioExceptionModel(message: "ارسال اطلاعات با مشکل مواجه شد!",code: 2);

      case DioErrorType.other:
        return  DioExceptionModel(message: "عملیات با مشکل رو به رو شد!",code: 3);

      case DioErrorType.response:
        return  _handlerError(dioError.response?.statusCode);


    }

  }
  DioExceptionModel  _handlerError(int? statusCode  ){
    switch(statusCode){
      case 400:
        return  DioExceptionModel(message:  'درخواست اشتباه است!',code: 400);// Bad Request
        break;
      case 401:
        return  DioExceptionModel(message:  'مجوز استفاده شما منقضی شده است!',code: 401);
      case 403:
        return  DioExceptionModel(message:  'شما اجازه استفاده از نرم افزار را ندارید!',code: 403);
        break;
      case 404:
        return  DioExceptionModel(message:  'مسیر مورد نظر یافت نشد!',code: 404);
        break;
      case 500:
        return  DioExceptionModel(message:  'خطای سرور',code: 500);

      default:
        return  DioExceptionModel(message:  'خطای سرور',code: 500);

    }
  }
}
