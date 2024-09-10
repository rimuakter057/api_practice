import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiCall {
  void myData() async {
    var response = await http.get(Uri.parse(
        "https://fakestoreapi.com/products?fbclid=IwZXh0bgNhZW0CMTEAAR3waNTnk9fL82lSYPRuN-uRcIJ-SLDA0MUGWr-9CuNfxNeyArqzzB_2S2k_aem_9DTjo6P--fnp-I9BhMHNUg"));
    var decodeData = jsonDecode(response.body);
    var data = decodeData;
   // print(data);
    try {
      if (response.statusCode == 200) {
        /*  for( int i =0; i<data.length; i++){
          print(data[i]['id']);
        }*/

        for (Map i in data) {
          print(i['title']);
        }
      }
    } catch (e) {
      print("error");
    }
  }
}
