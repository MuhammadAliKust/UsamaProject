import 'package:flutter/material.dart';
import 'package:usama_project/image.dart';
import 'package:usama_project/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageViewDemo(),
    );
  }
}
