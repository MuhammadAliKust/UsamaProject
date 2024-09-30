import 'package:flutter/material.dart';
import 'package:usama_project/dynamic_list_view.dart';
import 'package:usama_project/image.dart';
import 'package:usama_project/login_view.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar"),
            bottom: TabBar(
              tabs: [
                Icon(Icons.home),
                Icon(Icons.favorite),
                Icon(Icons.person),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LoginView(),
              ImageViewDemo(),
              DynamicListView(),
            ],
          ),
        ));
  }
}
