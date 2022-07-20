import 'package:flutter/material.dart';

class DatingProfileScreen extends StatefulWidget {
  const DatingProfileScreen({Key? key}) : super(key: key);

  @override
  State<DatingProfileScreen> createState() => _DatingProfileScreenState();
}

class _DatingProfileScreenState extends State<DatingProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}
