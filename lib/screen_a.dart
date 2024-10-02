import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usama_project/providers/user_provider.dart';
import 'package:usama_project/screen_b.dart';

class ScreenAView extends StatelessWidget {
  ScreenAView({super.key});

  String userName = "Ali";

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            userProvider.setName('Usama');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScreenBView()));
          },
          child: Text("Go to Screen B"),
        ),
      ),
    );
  }
}
