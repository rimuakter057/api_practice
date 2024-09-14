

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List  list =[];

  Future fetchData  ()async {
    var response = await http.get(Uri.parse(
        "https://api.nationalize.io?name=nathaniel"));
    var decodeData = jsonDecode(response.body);

    var myList = decodeData['country'] ;


    // print(myList);

    try {
      if (response.statusCode ==200){
        list = myList;
        print(".........................");
        print(list);

      }
    }
    catch (e) {
      print("Error");
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: ()async{
                    await fetchData();
                    setState(() {

                    });
                  },child: Center(child: Text("Click")),)),
              Card(
                shadowColor: Colors.black,
                elevation: 10,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height*.5,
                  width: MediaQuery.sizeOf(context).width,
                  child: Center(child: Text("List 1 ${list[0]["probability"]}"),
                  ),
                ),


              )







            ],
          ),
        ),
      ),
    );
  }
}


