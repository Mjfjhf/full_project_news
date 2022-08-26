import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/Articles.dart';

class DescriptonItems extends StatelessWidget {
static const String routeName='description';
  @override
  Widget build(BuildContext context) {
    var artic=ModalRoute.of(context)?.settings.arguments as Articles;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          backgroundColor: Colors.green,
          title: Text('Description'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            Image.asset("assets/images/pattern.png",fit: BoxFit.cover,height: double.infinity,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(artic.title??'',style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
                  SizedBox(height: 20,),
                  Image.network(artic.urlToImage??''),
                  SizedBox(height: 20,),
                  Text(artic.description??'',style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),
                  Text(artic.content??'')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
