import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/SourcesResponse.dart';
import 'package:news_app_sunday/model/models_category.dart';
import 'package:news_app_sunday/moduls/page_news/tab_controller_item.dart';
import 'package:news_app_sunday/shared/network/remot/api_manager.dart';

class NewsFragment extends StatelessWidget {
 CategoryModel categoryModel;

 NewsFragment(this.categoryModel);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
        future: ApiManager.getSourceResponce(categoryModel.id),
        builder: (context,snap){
          if(snap.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snap.hasError){
            return AlertDialog(
              content: Text("There are some error"),
            );
          }
          if('ok'!= snap.data?.status){
            Text("Error");
            print("status is ${snap.data?.status}");
          }
          var listOfSources=snap.data?.sources??[];
          print(listOfSources);
          print("----------------");
          return TabControllerItems(listOfSources);
        });
  }
}
