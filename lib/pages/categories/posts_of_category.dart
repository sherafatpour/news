import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/logics/home_logic.dart';
import 'package:news/models/category_model.dart';
import 'package:news/pages/home/components/latest_news.dart';
import 'package:news/util/request_status.dart';

class PostsOfCategory extends StatefulWidget {
  PostsOfCategory({Key? key}) : super(key: key);
  final HomeLogic logic = Get.put(HomeLogic());

  CategoriesModel? categoriesModel = Get.arguments;

  @override
  State<PostsOfCategory> createState() => _PostsOfCategoryState();
}

class _PostsOfCategoryState extends State<PostsOfCategory> {
  @override
  Widget build(BuildContext context) {
    if (widget.logic.postsOfCategoryList.isEmpty) {
      widget.logic.getPostsOfCategories(category: widget.categoriesModel!.id);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Obx(() {
        return widget.logic.status.value == RequestStatus.LOADING
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : widget.logic.status.value == RequestStatus.ERROR
                ? Center(
                    child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            widget.logic.getPostsOfCategories(
                                category: widget.categoriesModel!.id);
                          },
                          icon: const Icon(
                            Icons.refresh,
                            color: Colors.black,
                          )),
                      Text(widget.logic.errorMessage.value,
                          style: Theme.of(context).textTheme.subtitle1)
                    ],
                  ))
                : widget.logic.postsOfCategoryList.isEmpty
                    ? Center(
                        child: Text("محتوایی برای این صفحه موجود نیست!",
                            style: Theme.of(context).textTheme.subtitle1))
                    : SingleChildScrollView(
                        child: LatestNews(
                        latest: widget.logic.postsOfCategoryList.value,
                      ));
      }),
    );
  }

  @override
  void dispose() {
    Get.delete<HomeLogic>();
    super.dispose();
  }
}
