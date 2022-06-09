import 'package:flutter/material.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 40.0,
        ),
      ),
    );
  }
}
