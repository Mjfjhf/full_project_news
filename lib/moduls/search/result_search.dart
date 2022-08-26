import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/NewsResponse.dart';
import 'package:news_app_sunday/moduls/page_news/items_widget.dart';
import 'package:news_app_sunday/shared/network/remot/api_manager.dart';

class ResultSearch extends StatelessWidget {
static const String routeName="search";
  @override
  Widget build(BuildContext context) {
    var searchKey=ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(searchKey),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/pattern.png",fit: BoxFit.cover,height: double.infinity,),
          FutureBuilder<NewsResponse>(
              future: ApiManager.getsearchResponse(searchKey),
              builder: (context,snap){
                if(snap.connectionState==ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator());
                }
                if(snap.hasError){
                  return Text("There are error");
                }
                var listOfSearch= snap.data?.articles??[];
                return ListView.separated(
                    separatorBuilder: (context,index){
                      return Divider(height: 20,thickness: 2,color: Colors.green,);
                    },
                    itemBuilder: (context,index){
                  return ItemsWidget(listOfSearch[index]);
                }, itemCount: listOfSearch.length,);
              })
        ],
      ),
    );
  }
}
