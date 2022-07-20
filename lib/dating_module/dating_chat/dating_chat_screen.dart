import 'package:flutter/material.dart';

class DatingChatScreen extends StatefulWidget {
  const DatingChatScreen({Key? key}) : super(key: key);

  @override
  State<DatingChatScreen> createState() => _DatingChatScreenState();
}

class _DatingChatScreenState extends State<DatingChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Chat'),
      ),
    );
  }
}
