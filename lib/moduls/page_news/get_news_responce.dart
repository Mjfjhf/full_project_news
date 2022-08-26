import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/NewsResponse.dart';
import 'package:news_app_sunday/model/Sources.dart';
import 'package:news_app_sunday/moduls/page_news/items_widget.dart';
import 'package:news_app_sunday/shared/network/remot/api_manager.dart';

class GetNewsResponse extends StatelessWidget {
  Sources sources;

  GetNewsResponse(this.sources);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNewsResponse(sources),
        builder: (context,snap){
          if(snap.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snap.hasError){
            return AlertDialog(
              content: Text("There are some error"),
            );
          }
          var listOfnews=snap.data?.articles??[];
          return ListView.separated(
            separatorBuilder: (context,index){
              return Divider(height: 19,color: Colors.green,thickness: 1,);
            },
            itemCount: listOfnews.length,
              itemBuilder: (context,index){
              return ItemsWidget(listOfnews[index]);
              });
        });
  }
}
