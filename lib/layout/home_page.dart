import 'package:flutter/material.dart';
import 'package:news_app_sunday/layout/search_appBar.dart';
import 'package:news_app_sunday/model/models_category.dart';
import 'package:news_app_sunday/moduls/page_category/category_fragment.dart';
import 'package:news_app_sunday/moduls/page_news/news_fragment.dart';
import 'package:news_app_sunday/moduls/search/result_search.dart';
import 'package:news_app_sunday/shared/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'home_drawe.dart';

class HomeMainPage extends StatefulWidget {
static const String routeName="main Home";

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {

  String neText='';
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Scaffold(
      drawer: HomeDrawer(onReturn),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          actions: [
            InkWell(
                onTap: (){

                  if(pro.iconData==Icons.search){
                    pro.iconData=Icons.close;
                    pro.title=TextField( cursorWidth: 5,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border:OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                      autofocus: true,
                      onChanged: (text){
                        neText=text;
                        if(neText==''){
                          pro.iconData=Icons.close;
                          setState((){});
                        }else{
                          pro.iconData=Icons.travel_explore;setState((){});
                        }
                      },
                    );
                   // pro.iconData=Icons.travel_explore_sharp;
                    //pro.iconData=Icons.exit_to_app;
                  }else{
                    if(pro.iconData==Icons.close){
                      pro.title=Text("News App!!");
                      pro.iconData=Icons.search;
                      setState((){});
                    }else{
                      pro.iconData=Icons.search;
                      pro.title=Text("News App!!");
                      Navigator.pushNamed(context,
                          ResultSearch.routeName,arguments:neText);
                    }

                  }
                  setState((){});
                },
                child: Icon(pro.iconData,size: 30,)),
            SizedBox(width: 10,)
          ],
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Container(height:45,child: pro.title),
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

