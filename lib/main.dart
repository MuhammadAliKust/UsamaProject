import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 18,
          ),
          title: Text(
            "First Class",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: (){},
          child: Icon(Icons.add,color: Colors.blue,),
        ),
      ),
    );
  }
}
