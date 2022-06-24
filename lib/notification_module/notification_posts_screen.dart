import 'package:flutter/material.dart';
import 'package:social/lists.dart';
import 'package:social/notification_module/components/notification_bar.dart';

class NotificationPostsScreen extends StatefulWidget {
  const NotificationPostsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationPostsScreen> createState() =>
      _NotificationPostsScreenState();
}

class _NotificationPostsScreenState extends State<NotificationPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: imageAddress.length,
        itemBuilder: (BuildContext context, index) {
          return CustomNotificationBar(
            image: imageAddress[index],
            name: name[index],
            followUpText: followUpText[index],
            time: time[index],
            extraContent: Container(),
          );
        });
  }
}
