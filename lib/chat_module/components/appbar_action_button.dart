import 'package:flutter/material.dart';

class AppBarActionButton extends StatefulWidget {
  const AppBarActionButton({Key? key, required this.icon, this.onPress})
      : super(key: key);
  final IconData icon;
  final Function()? onPress;

  @override
  State<AppBarActionButton> createState() => _AppBarActionButtonState();
}

class _AppBarActionButtonState extends State<AppBarActionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: widget.onPress,
        child: Icon(
          widget.icon,
          color: Colors.black,
          size: 18.0,
        ),
      ),
    );
  }
}
