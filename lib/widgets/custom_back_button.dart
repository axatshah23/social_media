import 'package:flutter/material.dart';

class CustomBackButton extends StatefulWidget {
  CustomBackButton({Key? key, required this.onPress}) : super(key: key);
  final Function()? onPress;

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: widget.onPress,
        child: const Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 36.0,
        ),
      ),
    );
  }
}
