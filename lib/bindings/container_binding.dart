/// Generated by Flutter GetX Starter on 2022-04-11 22:15
import 'package:get/get.dart';
import 'package:news/logics/container_logic.dart';


class ContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContainerLogic>(
      () => ContainerLogic(),
    );
  }
}