import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usama_project/providers/user_provider.dart';

class ScreenBView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(child: Text("Name: ${userProvider.getName()}")),
    );
  }
}
