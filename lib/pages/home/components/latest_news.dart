import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/models/post_model.dart';
import 'package:news/pages/home/components/post_item.dart';

class LatestNews extends StatelessWidget {
  final List<PostModel> latest;

  const LatestNews({Key? key,required this.latest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          ...latest.map((item) {
            return  PostItem(post:item);
          }).toList(),
        ],
      ),
    );
  }
}



