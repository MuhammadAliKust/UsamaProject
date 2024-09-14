import 'package:flutter/material.dart';

class MultipleListViewDemo extends StatefulWidget {
  MultipleListViewDemo({super.key});

  @override
  State<MultipleListViewDemo> createState() => _MultipleListViewDemoState();
}

class _MultipleListViewDemoState extends State<MultipleListViewDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                if (selectedIndex.contains(i)) {
                  selectedIndex.remove(i);
                } else {
                  selectedIndex.add(i);
                }

                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Select Index : $selectedIndex"),
              subtitle: Text("Index : $i"),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
            );
          }),
    );
  }
}
