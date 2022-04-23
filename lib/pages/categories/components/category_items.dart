import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/models/category_model.dart';

class CategoryItem extends StatelessWidget {

  final CategoriesModel categoriesModel;

  const CategoryItem({Key? key,required this.categoriesModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    double screenHeight = Get.height;
    double defaultSize = 16;
    return GestureDetector(
        onTap: () { /*Navigator.push(context, MaterialPageRoute(builder: (context)=> PostsOfCategory(categoriesModel: categoriesModel) ));*/},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
               Radius.circular(10),),
           /* boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(
                    0, 3), // changes position of shadow
              ),
            ],*/
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.ac_unit),
              Expanded(
                child: Text(categoriesModel.name,
                    style: TextStyle(
                        fontSize: defaultSize * 1.6,
                        color: Colors.black),
                    textAlign: TextAlign.center),
              )
            ],
          ),
        ));
  }
}
