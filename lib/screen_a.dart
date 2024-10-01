import 'package:flutter/material.dart';
import 'package:usama_project/screen_b.dart';

class ScreenAView extends StatelessWidget {
  ScreenAView({super.key});

  String userName = "Ali";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ScreenBView(name: userName)));
          },
          child: Text("Go to Screen B"),
        ),
      ),
    );
  }
}
