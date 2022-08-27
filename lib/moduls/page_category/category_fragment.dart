import 'package:flutter/material.dart';
import 'package:news_app_sunday/moduls/page_category/category_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../model/models_category.dart';

class CategoryFragment extends StatefulWidget {
  Function onClichedCategory;
  CategoryFragment(this.onClichedCategory);

  @override
  State<CategoryFragment> createState() => _CategoryFragmentState();
}

class _CategoryFragmentState extends State<CategoryFragment> {
 //var catogries= CategoryModel.listOfCategory();

  @override
  Widget build(BuildContext context) {
    listOfCategory(){
      return[
        CategoryModel(AppLocalizations.of(context)!.sports, "assets/images/sports.png",     "sports", Color(0xffC91C22)),
        CategoryModel(AppLocalizations.of(context)!.politics, "assets/images/Politics.png", "entertainment", Color(0xff003E90)),
        CategoryModel(AppLocalizations.of(context)!.health, "assets/images/health.png",     "health", Color(0xffED1E79)),
        CategoryModel(AppLocalizations.of(context)!.business, "assets/images/bussines.png", "business", Color(0xffCF7E48)),
        CategoryModel(AppLocalizations.of(context)!.technology, "assets/images/environment.png", "technology", Color(0xff4882CF)),
        CategoryModel(AppLocalizations.of(context)!.scince   , "assets/images/science.png",   "science", Color(0xffF2D352)),
      ];
    }
    var cate=listOfCategory();
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GridView.builder(
        itemCount: cate.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemBuilder: (context,index){
            return InkWell(
                onTap: (){
                  widget.onClichedCategory(cate[index]);
                  setState((){});
                  print(index);
                },
                child: CategoryItems(cate[index],index));
          }),
    );
  }
}
