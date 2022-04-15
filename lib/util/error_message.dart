

import 'package:get/get.dart';

class ErrorMessage{

  void show(String error, int code,) {



    switch(code){
      case 403:

        Get.defaultDialog(title: "پیام",middleText: error,textConfirm: "بستن",onConfirm: (){
   /*       storage.remove();
          Get.offAllNamed(RouteName.login);*/
        });


        break;
      case 401:

        Get.defaultDialog(title: "پیام",middleText: error,textConfirm: "بستن",onConfirm: (){
          /*storage.remove();
          Get.offAllNamed(RouteName.login);*/
        });

        break;

      case 500:

        Get.defaultDialog(title: "پیام",middleText: error,onConfirm: (){
        },textConfirm: "تلاش مجدد",textCancel: "بستن");
        break;
      case 404:

        Get.defaultDialog(title: "پیام",middleText: "خطایی رخ داده است!",textCancel: "بستن");
        break;

      default:

        Get.defaultDialog(title: "پیام",middleText: "خطایی رخ داده است!",textCancel: "بستن",);
        break;
    }
  }

}