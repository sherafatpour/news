/// Generated by Flutter GetX Starter on 2022-04-25 20:54
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:news/local/db/app_db.dart';
import 'package:news/logics/post_detail_logic.dart';
import 'package:news/models/post_model.dart';
import 'package:news/pages/home/components/section_title.dart';
import 'package:drift/drift.dart' as drift;

class PostDetailPage extends StatefulWidget {
  const PostDetailPage({Key? key}) : super(key: key);

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  final PostDetailLogic logic = Get.put(PostDetailLogic());
  final PostModel postModel = Get.arguments;
  var isFavorite = false.obs;
  @override
  void dispose() {
    Get.delete<PostDetailLogic>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    double screenHeight = Get.height;
    double defaultSize = 16;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * .35,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(postModel.img),
              fit: BoxFit.cover,
            )),
          ),
          SizedBox(
            height: defaultSize,
          ),
          Container(
              margin: EdgeInsets.all(defaultSize),
              child: Text(
                postModel.title,
                style: Theme.of(context).textTheme.titleLarge,
              )),
          SizedBox(
            height: screenWidth * .03,
          ),
          Container(
            margin: EdgeInsets.all(defaultSize),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      /* CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage:
                           // NetworkImage(postModel.author_img),
                          ),*/
                      SizedBox(
                        width: defaultSize * 1,
                      ),
                      Column(
                        children: [
                          Text(
                            postModel.name,
                            style: TextStyle(
                                fontSize: defaultSize, color: Colors.black45),
                          ),
                          Obx(() {
                            return IconButton(
                              icon: isFavorite.value
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Colors.black38,
                                    ),
                              onPressed: () {
                                if(!isFavorite.value){
                                final entity = FavoriteCompanion(
                                    postId: drift.Value(postModel.id),
                                    title: drift.Value(postModel.title),
                                    category: drift.Value(postModel.cat),
                                    authorImg:
                                        drift.Value("postModel.author_img"),
                                    date: drift.Value(postModel.date),
                                    content: drift.Value(postModel.content),
                                    name: drift.Value(postModel.name));

                                logic.insertFavorite(entity,isFavoriteFunction);
                                ScaffoldMessenger.of(context)
                                    .showMaterialBanner(MaterialBanner(
                                        content: Text(
                                            "به لیست علاقمندی ها اضافه شد!"),
                                        actions: [
                                      TextButton(
                                        onPressed: () =>
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentMaterialBanner(),
                                        child: Text("close"),
                                      )
                                    ]));



                              }else{
                                  logic.deleteFavorite(postModel.id,isFavoriteFunction);


                                }



                                },
                            );
                          })
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.folder_open,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: defaultSize,
                      ),
                      Text(
                        postModel.cat,
                        style: TextStyle(
                            color: Colors.black54, fontSize: defaultSize * 1.4),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          Container(
              margin: EdgeInsets.all(defaultSize),
              child: Html(
                data: postModel.content,
              )),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          Container(
              margin: EdgeInsets.all(defaultSize),
              child: SectionTitle(
                () {},
                "دیدگاه",
                "ارسال دیدگاه",
              )),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
        ],
      ),
    ));
  }
  isFavoriteFunction(bool status){
    isFavorite.value = status;

  }
}
