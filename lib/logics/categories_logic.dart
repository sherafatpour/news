import 'package:get/get.dart';
import 'package:news/models/category_model.dart';
import 'package:news/models/post_model.dart';
import 'package:news/providers/categories_provider.dart';
import 'package:news/util/error_message.dart';
import 'package:news/util/request_status.dart';

class CategoriesLogic extends GetxController {
  var categoriesList = <CategoriesModel>[].obs;
  var status = RequestStatus.INITIALIZE.obs;
  var errorMessage = "".obs;

  @override
  void onInit() {

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

  getCategories() {
    status.value = RequestStatus.LOADING;
    CategoriesProvider().getCategories(
        beforeSend: () {},
        onSuccess: (data) {
          if (data.statusCode == 200) {
            List responseBody = data.data;
            categoriesList.value =
                responseBody.map((e) => CategoriesModel.fromJson(e)).toList();
            status.value = RequestStatus.LOADED;
          } else {
            status.value = RequestStatus.ERROR;
            errorMessage.value = data.statusMessage!;
           // ErrorMessage().show(data.statusMessage!, data.statusCode!);
          }
        },
        onError: (error, code) {
          status.value = RequestStatus.ERROR;
          errorMessage.value = error;

        //  ErrorMessage().show(error, code);
        });
  }


}
