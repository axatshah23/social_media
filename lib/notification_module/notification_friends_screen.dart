import 'package:flutter/material.dart';

class NotificationFriendsScreen extends StatefulWidget {
  const NotificationFriendsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationFriendsScreen> createState() =>
      _NotificationFriendsScreenState();
}

class _NotificationFriendsScreenState extends State<NotificationFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Friends')),
    );
  }
}
