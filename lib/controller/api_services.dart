 import 'package:http/http.dart' as http;

import '../model/fake_stor_api_model.dart';


 class ApiCall {
 Future<PostModel?> myData() async {
 /*  MyApiModel ApiModel = ApiModel();*/
     var response = await http.get(Uri.parse(
        "https://fakestoreapi.com/products?fbclid=IwZXh0bgNhZW0CMTEAAR3waNTnk9fL82lSYPRuN-uRcIJ-SLDA0MUGWr-9CuNfxNeyArqzzB_2S2k_aem_9DTjo6P--fnp-I9BhMHNUg"));

   // print(data);
     try {
      if (response.statusCode == 200) {

       }
    } catch (e) {
      print("error");
     }
   }
 }
