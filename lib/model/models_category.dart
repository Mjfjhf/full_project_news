import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app_sunday/shared/provider/my_provider.dart';
import 'package:provider/provider.dart';


class CategoryModel{
  String title;
  String imageUrl;
  String id;
  Color color;

  CategoryModel(this.title, this.imageUrl, this.id, this.color);
  static List<CategoryModel> listOfCategory(){
    return[
    CategoryModel("Sports", "assets/images/sports.png",     "sports", Color(0xffC91C22)),
    CategoryModel("Politics", "assets/images/Politics.png", "entertainment", Color(0xff003E90)),
    CategoryModel("Health", "assets/images/health.png",     "health", Color(0xffED1E79)),
    CategoryModel("Business", "assets/images/bussines.png", "business", Color(0xffCF7E48)),
    CategoryModel("Technology", "assets/images/environment.png", "technology", Color(0xff4882CF)),
    CategoryModel("Science", "assets/images/science.png",   "science", Color(0xffF2D352)),
  ];
}
}