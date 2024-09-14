import 'dart:convert';
import 'dart:developer';
import 'package:api_practice/model/my_api_model.dart';
import 'package:http/http.dart' as http;
class ApiServices{



 static Future<List<Country>?> fetchData()async{
   var url="https://api.nationalize.io?name=nathaniel";
    try{
      var response=await http.get(Uri.parse(url));
      log("response :${response.statusCode}");
if(response.statusCode==200){
  var json=jsonDecode(response.body);
  var data=MyApiModel.fromJson(json);
  var list=data.country;
 return list;

}

    }catch (e){
      log("Catech $e");
    }
    return [];
  }








}










