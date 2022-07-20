import 'package:flutter/material.dart';

class DatingLikeScreen extends StatefulWidget {
  const DatingLikeScreen({Key? key}) : super(key: key);

  @override
  State<DatingLikeScreen> createState() => _DatingLikeScreenState();
}

class _DatingLikeScreenState extends State<DatingLikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Like'),
      ),
    );
  }
}
