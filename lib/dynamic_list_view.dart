import 'package:flutter/material.dart';

import 'models/notification.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Title', description: 'First Description', time: '12:30'),
    NotificationModel(
        title: 'Second Title', description: 'Second Description', time: '1:30'),
    NotificationModel(
        title: 'Third Title', description: 'Third Description', time: '2:30'),
  NotificationModel(
        title: 'Fourth Title', description: 'Fourth Description', time: '2:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List View"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
        return ListTile(
          title: Text(notificationList[i].title),
          subtitle: Text(notificationList[i].description),
          trailing: Text(notificationList[i].time),
        );
      }),
    );
  }
}
