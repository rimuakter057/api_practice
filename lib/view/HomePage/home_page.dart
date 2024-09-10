import 'package:api_practice/controller/api_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(onPressed: (){
               ApiCall().myData();
          },child: Center(child: Text("Click")),))),
    );
  }
}
