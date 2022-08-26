import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/models_category.dart';

class CategoryItems extends StatelessWidget {
 CategoryModel categoryModel;
 int index;
 CategoryItems(this.categoryModel,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: categoryModel.color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft:  Radius.circular(20),
          bottomRight: Radius.circular(index%2==0?0:20),
          bottomLeft: Radius.circular(index%2 !=0?0:20)
        )
      ),
      child: Column(
        children: [
          Image.asset(categoryModel.imageUrl,height: 120,),
          Text(categoryModel.title,style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
