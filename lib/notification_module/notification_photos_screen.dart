import 'package:flutter/material.dart';

class NotificationPhotosScreen extends StatefulWidget {
  const NotificationPhotosScreen({Key? key}) : super(key: key);

  @override
  State<NotificationPhotosScreen> createState() =>
      _NotificationPhotosScreenState();
}

class _NotificationPhotosScreenState extends State<NotificationPhotosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Photos')),
    );
  }
}
