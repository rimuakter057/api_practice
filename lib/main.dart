
import 'package:api_practice/view/HomePage/home_page.dart';
import 'package:flutter/cupertino.dart';
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
      home: HomePage(),
    );
  }
}
