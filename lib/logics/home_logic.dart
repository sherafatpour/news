/// Generated by Flutter GetX Starter on 2022-04-11 22:15
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:news/providers/post_provider.dart';
import 'package:news/util/error_message.dart';

class HomeLogic extends GetxController {
  late Dio dio;
  var selectedIndex = 0.obs;
  @override
  void onInit() {
    dio = Dio();
    getPost();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  getPost() {
    PostProvider().getPosts(
        beforeSend: () {},
        onSuccess: (data) {
          if (data.statusCode == 200) {
            print(data);
          } else {
            print(data);

            ErrorMessage().show(data.statusMessage!, data.statusCode!);
          }
        },
        onError: (error, code) {
          print(error);

          ErrorMessage().show(error, code);
        });
  }
}