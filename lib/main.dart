import 'package:flutter/material.dart';
import 'package:usama_project/dynamic_list_view.dart';
import 'package:usama_project/gride_view_builder.dart';
import 'package:usama_project/list_view_builder.dart';
import 'package:usama_project/multiple_selection.dart';
import 'package:usama_project/page_view_demo.dart';

import 'login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GridViewDemo(),
    );
  }
}
