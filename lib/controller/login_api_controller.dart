import 'dart:convert';

import 'package:api_practice/model/login_api_model.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  Future<List<LoginModel>?> loginData ()async{
    try{
      var response =await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments?postId=1"));
      if(response.statusCode == 200){
        List <LoginModel> jsonData = List <LoginModel>.from(json.decode(response.body));
        return jsonData.map((json) => LoginModel.fromJson(json as Map<String, dynamic>)).toList();
      }
      
    }
        catch(e){
      print(e.toString());
        }
        
        return null;
  }
  
}


