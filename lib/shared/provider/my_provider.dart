import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  Widget title=Text("News App!");
  IconData iconData=Icons.search;
  void changeTitle(Widget newTitle){
    title=newTitle;
    notifyListeners();
  }
  void changeIcon(IconData newIcon){
    iconData=newIcon;
    notifyListeners();
  }

  String neLang="en";
  selectlang(String lang){
    neLang=lang;
    notifyListeners();
  }
}