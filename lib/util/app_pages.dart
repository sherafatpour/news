import 'package:get/get.dart';
import 'package:news/home/home_binding.dart';
import 'package:news/home/home_page.dart';
import 'package:news/util/rout_name.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => const HomePage(),binding: HomeBinding()),


  ];
}
