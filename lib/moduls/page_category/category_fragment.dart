import 'package:flutter/material.dart';
import 'package:news_app_sunday/moduls/page_category/category_widget.dart';

import '../../model/models_category.dart';

class CategoryFragment extends StatefulWidget {
  Function onClichedCategory;
  CategoryFragment(this.onClichedCategory);

  @override
  State<CategoryFragment> createState() => _CategoryFragmentState();
}

class _CategoryFragmentState extends State<CategoryFragment> {
 var catogries= CategoryModel.listOfCategory();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GridView.builder(
        itemCount: catogries.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemBuilder: (context,index){
            return InkWell(
                onTap: (){
                  widget.onClichedCategory(catogries[index]);
                  setState((){});
                  print(index);
                },
                child: CategoryItems(catogries[index],index));
          }),
    );
  }
}
