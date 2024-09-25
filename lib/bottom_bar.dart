import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:usama_project/dynamic_list_view.dart';
import 'package:usama_project/image.dart';
import 'package:usama_project/login_view.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int selectedIndex = 0;


  List<Widget> screenList = [
    LoginView(),
    ImageViewDemo(),
    DynamicListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screenList.elementAt(selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
