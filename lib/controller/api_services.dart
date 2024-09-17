 import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/fake_store_api_model.dart';


 class ApiCall {
 Future<List<PostModel>?> myData() async {
     try {
       var response = await http.get(Uri.parse(
           "https://fakestoreapi.com/products?fbclid=IwZXh0bgNhZW0CMTEAAR3waNTnk9fL82lSYPRuN-uRcIJ-SLDA0MUGWr-9CuNfxNeyArqzzB_2S2k_aem_9DTjo6P--fnp-I9BhMHNUg"));
      if (response.statusCode == 200) {
        List<PostModel>  model = List <PostModel>.from(json.decode(response.body).map((x)=> PostModel.fromJson(x)));
        return model;
       }
    } catch (e) {
      print(e.toString());
     }
     return null;
   }
 }
