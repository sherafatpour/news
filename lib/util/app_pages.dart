import 'package:get/get.dart';
import 'package:news/bindings/container_binding.dart';
import 'package:news/pages/container/container_page.dart';
import 'package:news/util/rout_name.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => const ContainerPage(),binding: ContainerBinding()),


  ];
}
