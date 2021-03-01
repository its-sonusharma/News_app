import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newz_app/constants/strings.dart';
import 'package:newz_app/models/newsinfo.dart';

class Api_services {

  Future<NewsModel> getNews() async {
   var client = http.Client();
   var newsModel = null;

   try {
     var respose = await client.get(Strings.news_url);
     if (respose.statusCode == 200) {
       var jsonString = respose.body;
       var jsonMap = json.decode(jsonString);
       newsModel = NewsModel.fromJson(jsonMap);
     }
   }catch(Exception){
 return newsModel;
 };;;
 return newsModel;
  }

}