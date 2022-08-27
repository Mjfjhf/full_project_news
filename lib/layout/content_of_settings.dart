import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:news_app_sunday/shared/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ContentSettings extends StatefulWidget {
  @override
  State<ContentSettings> createState() => _ContentSettingsState();
}

class _ContentSettingsState extends State<ContentSettings> {
  bool selected=false;
  late var pro;
  @override
  Widget build(BuildContext context) {
     pro=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),

            ),
            child: InkWell(
              onTap: (){
                showChiceLanguage();
              },
              child: Row(
                children: [
                  Text(pro.neLang=="en"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_circle_rounded,size: 25,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  showChiceLanguage(){
    showDialog(context: context,
        builder: (context){
      return AlertDialog(
        content: Container(
          height: MediaQuery.of(context).size.height *.20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                  onTap: (){
                    pro.selectlang("en");
                    setState((){});
                  },
                  child: selectedLang(AppLocalizations.of(context)!.english,pro.neLang=="en"?true:false)),
              SizedBox(height: 5,),
              Divider(height: 15,thickness: 2),
              InkWell(
                  onTap: (){
                    pro.selectlang("ar");
                  },
                  child: selectedLang(AppLocalizations.of(context)!.arabic, pro.neLang!="en"?true:false))
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text(pro.neLang=="en"?"OK":"حسنا"))
        ],
      );
        });
  }
  Widget selectedLang(String lang,bool select){
    if(select){
      return Row(
        children: [
          Text(lang,style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          Spacer(),
          Checkbox(value: true, onChanged: (bool){})
        ],
      );
    }else{
      return Row(
        children: [
          Text(lang,style: TextStyle(
              color: Colors.black,
              //fontWeight: FontWeight.bold,
              fontSize: 18
          )),
          Spacer(),
          Checkbox(value: false, onChanged: (bool){})
        ],
      );
    }
  }
}
