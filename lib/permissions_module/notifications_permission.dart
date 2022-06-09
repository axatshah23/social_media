import 'package:flutter/material.dart';

class AskNotificationsPermission extends StatefulWidget {
  const AskNotificationsPermission({Key? key}) : super(key: key);

  @override
  State<AskNotificationsPermission> createState() =>
      _AskNotificationsPermissionState();
}

class _AskNotificationsPermissionState
    extends State<AskNotificationsPermission> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Notifications permission')),
    );
  }
}
