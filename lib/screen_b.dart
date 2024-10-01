import 'package:flutter/material.dart';

class ScreenBView extends StatelessWidget {
  final String name;

  ScreenBView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(child: Text("Name: $name")),
    );
  }
}
