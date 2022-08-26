import 'package:flutter/material.dart';
import 'package:news_app_sunday/model/Sources.dart';

class TabsWidget extends StatelessWidget {
 Sources sources;
 bool selected;
 TabsWidget(this.sources,this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green
        ),
        color: selected?Colors.green:Colors.transparent,
        borderRadius: BorderRadius.circular(20)
      ),
    child: Text(sources.name??'',style: TextStyle(
      color: selected ?Colors.white:Colors.green,
    ),),
    );
  }
}
