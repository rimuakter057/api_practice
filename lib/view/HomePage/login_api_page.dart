

import 'package:api_practice/controller/login_api_controller.dart';
import 'package:flutter/material.dart';

import '../../model/login_api_model.dart';

class LoginApiPage extends StatefulWidget {
  const LoginApiPage({super.key});

  @override
  State<LoginApiPage> createState() => _LoginApiPageState();
}

class _LoginApiPageState extends State<LoginApiPage> {
  bool isGet = false;
  List<LoginModel> loginModel =[];

  loginGetApi (){
    bool isGet = true;
    LoginApi().loginData().then((value) {
      setState(() {
        loginModel = value!;
        bool isGet = false;
      });
    }
    );
  }

  @override
  void initState() {
 loginGetApi();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:isGet == true? Center(child: CircularProgressIndicator()) :Column(children: [
        ListView.separated(
          shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: loginModel.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                tileColor: Colors.grey,
                title:Text(loginModel[index].name.toString()),
                subtitle:Text(loginModel[index].body.toString()),
                leading: Text(loginModel[index].id.toString()),
                trailing: Text(loginModel[index].email.toString()),
              ),
            );

          }, separatorBuilder: (context,index){
        return SizedBox(height: 10,);

        }, )
      ],),

    );
  }
}
