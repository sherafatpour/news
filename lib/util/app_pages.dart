import 'package:get/get.dart';
import 'package:news/bindings/container_binding.dart';
import 'package:news/bindings/home_binding.dart';
import 'package:news/pages/categories/posts_of_category.dart';
import 'package:news/pages/container/container_page.dart';
import 'package:news/util/rout_name.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => const ContainerPage(),binding: ContainerBinding()),
    GetPage(name: RouteName.postsOfCategory, page: () =>  PostsOfCategory(),binding: HomeBinding()),


  ];
}
