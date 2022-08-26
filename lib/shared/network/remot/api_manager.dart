import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_sunday/model/NewsResponse.dart';
import 'package:news_app_sunday/model/Sources.dart';
import 'package:news_app_sunday/model/SourcesResponse.dart';

class ApiManager{

  static Future<SourcesResponse> getSourceResponce(String categruID)async{
    var uri= Uri.https("newsapi.org", "/v2/top-headlines/sources",{
      "apiKey" : "2ed3fc677f6b4cd28045685cff35741d",
      "category": categruID
    });
    var getresponse=await http.get(uri);
    var stringBody=getresponse.body;
    var json=jsonDecode(stringBody);
    var sourceResponse= SourcesResponse.fromJson(json);
    return sourceResponse;
  }

  static Future<NewsResponse> getNewsResponse(Sources sources)async{
    var uri=Uri.https("newsapi.org", "/v2/everything",{
      "apiKey" : "2ed3fc677f6b4cd28045685cff35741d",
      "sources": sources.id
    });
    var getrespons= await http.get(uri);
    var stringbody= getrespons.body;
    var json= jsonDecode(stringbody);
    var newsResponse= NewsResponse.fromJson(json);
    return newsResponse;
  }
}