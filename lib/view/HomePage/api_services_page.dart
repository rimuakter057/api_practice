import 'package:flutter/material.dart';

import '../../controller/api_services.dart';
import '../../model/fake_store_api_model.dart';

class ApiGetPage extends StatefulWidget {
  const ApiGetPage({super.key});

  @override
  State<ApiGetPage> createState() => _ApiGetPageState();
}

class _ApiGetPageState extends State<ApiGetPage> {



  bool isReady = false;

  List <PostModel> postModel = [];

  getPost (){
    bool isReady = true;
    ApiCall().myData().then((value){
      setState(() {
        postModel = value!;
        bool isReady = false;
      });
    });
  }

  @override
  void initState() {
    getPost();
    print("object");
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isReady == true? CircularProgressIndicator():
      ListView.separated(
        itemCount:postModel.length,
        itemBuilder: (context,index){
          return Card(child: ListTile(
            title: Text(postModel[index].title.toString()),

          ),);

        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            thickness: 1,
          );
        },


      ),
    );
  }
}





