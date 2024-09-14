







import 'package:api_practice/controller/api_controller.dart';
import 'package:api_practice/model/my_api_model.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Country> myList=[];


  getList()async{

    var a=await ApiServices.fetchData();
    if(a !=null){
     setState(() {
       myList=a;
     });
    }

  }

@override
  void initState() {
  super.initState();
  getList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Country List"),
          myList.isNotEmpty?ListView.builder(
              shrinkWrap: true,
              itemCount: myList.length,
              itemBuilder: (context,index){
                return Container(
                  height: 100,
                  child: Column(
                    children: [
                      Text("Country Id:${myList[index].countryId}"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Country Probability:${myList[index].probability}"),

                    ],
                  ),
                );
              }):CircularProgressIndicator()
        ],
      ),
    );
  }
}

