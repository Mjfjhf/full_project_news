import 'package:flutter/material.dart';
import 'package:news_app_sunday/layout/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeDrawer extends StatelessWidget {
 Function retuToCategory;

 HomeDrawer(this.retuToCategory);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *.75,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
           height: MediaQuery.of(context).size.height *.25,
           // height: 12,
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(AppLocalizations.of(context)!.news_app,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 27
            ),),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              retuToCategory();
            },
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.list,size: 35,),
                SizedBox(width: 10,),
                Text(AppLocalizations.of(context)!.categories,style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          Divider(height: 20,thickness: 2),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, SettingsPage.routeName);
            },
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.settings,size: 35,),
                SizedBox(width: 10,),
                Text(AppLocalizations.of(context)!.settings,style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
