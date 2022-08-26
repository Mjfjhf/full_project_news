import 'package:flutter/material.dart';
import 'package:news_app_sunday/moduls/page_news/get_news_responce.dart';
import 'package:news_app_sunday/moduls/page_news/tabs_widget.dart';

import '../../model/Sources.dart';

class TabControllerItems extends StatefulWidget {
 List<Sources> sources;
 TabControllerItems(this.sources);

  @override
  State<TabControllerItems> createState() => _TabControllerItemsState();
}

class _TabControllerItemsState extends State<TabControllerItems> {
 int indexselected=0;

 @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
              onTap: (index){
                indexselected=index;
                setState((){});
              },
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs:widget.sources.map((e) => TabsWidget(e,
                  indexselected==widget.sources.indexOf(e)?true:false)).toList(),
            )),
        Expanded(child: GetNewsResponse(widget.sources[indexselected]))
      ],
    );
  }
}
