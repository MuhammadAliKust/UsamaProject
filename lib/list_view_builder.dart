import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                selectedIndex = i;
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Select Index : $selectedIndex"),
              subtitle: Text("Index : $i"),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: selectedIndex == i ? Colors.blue : Colors.white,
            );
          }),
    );
  }
}
