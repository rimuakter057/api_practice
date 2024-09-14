/*





import 'package:flutter/material.dart';

import '../../controller/api_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  ApiCall().myData();
                },child: Center(child: Text("Click")),)),
            Card(
              shadowColor: Colors.black,
              elevation: 10,
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height*.5,
                width: MediaQuery.sizeOf(context).width,
                child: Center(child: Text("f"),
                ),
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}
*/
