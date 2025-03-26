
import 'package:api_practice/view/HomePage/login_api_page.dart';
import 'package:api_practice/view/practice_page/practice_page.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const ApiPractice());
}

class ApiPractice extends StatelessWidget {
  const ApiPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticePage(),
    );
  }
}

class HomePageN extends StatefulWidget {
  const HomePageN({super.key});

  @override
  State<HomePageN> createState() => _HomePageNState();
}

class _HomePageNState extends State<HomePageN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rimur"),),
    );
  }
}
