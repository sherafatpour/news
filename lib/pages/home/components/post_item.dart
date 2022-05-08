import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/models/post_model.dart';
import 'package:news/util/rout_name.dart';


class PostItem extends StatelessWidget {

  final PostModel post;

  const PostItem({Key? key,required this.post}) : super(key: key);






  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    double screenHeight = Get.height;
    return InkWell(
      onTap: (){
        Get.toNamed(RouteName.postDetail,arguments: post);

      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16  , horizontal: 16 ),
        width: screenWidth,
        height: screenHeight * .12,
        child: Row(
          children: [

           post.img !=  null?  Expanded(
              flex: 2,
              child: Container(
                width: screenWidth * .25,
                height: screenWidth * .25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                     image:  DecorationImage(
                        image: NetworkImage(
                            post.img),
                        fit: BoxFit.cover)),
              )
            ): SizedBox(
           ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 4.0, left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        post.title,
                        style:Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis)),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                size: 8,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Text("۱ ساعت قبل",
                                  style:Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis)),


                            ],
                          ),  SizedBox(
                            width: 16,
                          ),
                          Expanded(child: IconButton(icon:Icon( Icons.bookmark_outline,), onPressed: () {  },))

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
