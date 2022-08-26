import 'package:flutter/material.dart';
import 'package:news_app_sunday/layout/home_page.dart';
import 'package:news_app_sunday/layout/settings.dart';
import 'package:news_app_sunday/moduls/page_news/one_items_discription.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeMainPage.routeName : (context) => HomeMainPage(),
        DescriptonItems.routeName : (context) => DescriptonItems(),
        SettingsPage.routeName:(context) => SettingsPage()
      },
      initialRoute: HomeMainPage.routeName,
    );
  }
}
