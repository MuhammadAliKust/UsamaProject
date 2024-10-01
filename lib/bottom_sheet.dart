import 'package:flutter/material.dart';
import 'package:usama_project/login_view.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet View"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Text("This is bottom sheet")
              ],),
            );
                });
          },
          child: Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
