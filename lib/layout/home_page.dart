import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/models_category.dart';
import 'package:news_app_sunday/moduls/page_category/category_fragment.dart';
import 'package:news_app_sunday/moduls/page_news/news_fragment.dart';

import 'home_drawe.dart';

class HomeMainPage extends StatefulWidget {
static const String routeName="main Home";

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(onReturn),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text("News App!!",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
        ),
      ),
      body: Stack(
        children: [
        Image.asset("assets/images/pattern.png",fit: BoxFit.cover,height: double.infinity,),
          //NewsFragment(),
          _categoryModel==null?CategoryFragment(onCliched):NewsFragment(_categoryModel!)
        ],
      ),
    );
  }

  CategoryModel? _categoryModel;
  void onCliched(CategoryModel categoryModel){
    _categoryModel=categoryModel;
   // Navigator.pop(context);
    setState((){});
  }
  void onReturn(){
    _categoryModel=null;
    Navigator.pop(context);
    setState((){});
  }
}

