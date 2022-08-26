import 'package:flutter/material.dart';
import 'package:news_app_sunday/layout/home_page.dart';
import 'package:news_app_sunday/layout/settings.dart';
import 'package:news_app_sunday/moduls/page_news/one_items_discription.dart';
import 'package:news_app_sunday/moduls/search/result_search.dart';
import 'package:news_app_sunday/shared/provider/my_provider.dart';
import 'package:provider/provider.dart';

main(){
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeMainPage.routeName : (context) => HomeMainPage(),
        DescriptonItems.routeName : (context) => DescriptonItems(),
        SettingsPage.routeName:(context) => SettingsPage(),
        ResultSearch.routeName: (context) => ResultSearch()
      },
      initialRoute: HomeMainPage.routeName,
    );
  }
}
