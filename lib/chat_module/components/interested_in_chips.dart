import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomChips extends StatefulWidget {
  const CustomChips(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.label,
      required this.chipBackgroundColor})
      : super(key: key);
  final IconData icon;
  final Color iconColor;
  final String label;
  final Color chipBackgroundColor;

  @override
  State<CustomChips> createState() => _CustomChipsState();
}

class _CustomChipsState extends State<CustomChips> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        elevation: 1.0,
        padding: EdgeInsets.all(8.0),
        avatar: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Center(
            child: Icon(
              widget.icon,
              size: 20.0,
              color: widget.iconColor,
            ),
          ),
        ),
        label: Text(
          widget.label,
        ),
        labelStyle: kChipLabelStyle,
        backgroundColor: widget.chipBackgroundColor,
      ),
    );
  }
}
