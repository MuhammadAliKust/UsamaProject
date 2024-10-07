import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usama_project/bottom_bar.dart';
import 'package:usama_project/bottom_sheet.dart';
import 'package:usama_project/dialog_box.dart';
import 'package:usama_project/dynamic_list_view.dart';
import 'package:usama_project/gride_view_builder.dart';
import 'package:usama_project/list_view_builder.dart';
import 'package:usama_project/map_view.dart';
import 'package:usama_project/multiple_selection.dart';
import 'package:usama_project/page_view_demo.dart';
import 'package:usama_project/providers/user_provider.dart';
import 'package:usama_project/screen_a.dart';
import 'package:usama_project/tabbar_view.dart';

import 'login_view.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GoogleMapView(),
    );
  }
}
