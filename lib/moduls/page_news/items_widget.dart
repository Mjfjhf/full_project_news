import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/Articles.dart';
import 'package:news_app_sunday/model/Sources.dart';
import 'package:news_app_sunday/moduls/page_news/one_items_discription.dart';

class ItemsWidget extends StatelessWidget {
 Articles articles;

 ItemsWidget(this.articles);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //todo :navigate to description
        Navigator.pushNamed(context, DescriptonItems.routeName, arguments: articles);
      },
      child: Container(
        //clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Image.network(articles.urlToImage??'',),
            SizedBox(height: 5,),
            Text(articles.author??'',style: TextStyle(color: Colors.red,fontSize: 13),),
            SizedBox(height: 5,),
            Text(articles.title??'',style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            Text(articles.publishedAt??'',textAlign: TextAlign.right,)
          ],
        ),
      ),
    );
  }
}
