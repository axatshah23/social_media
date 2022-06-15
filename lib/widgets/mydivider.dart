import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 15.0),
          Container(
            height: 0.75,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
