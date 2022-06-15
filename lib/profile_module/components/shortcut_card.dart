import 'package:flutter/material.dart';
import 'package:social/constants.dart';

class ShortcutCard extends StatefulWidget {
  const ShortcutCard(
      {Key? key, required this.icon, this.iconColor, required this.label})
      : super(key: key);
  final IconData icon;
  final Color? iconColor;
  final String label;

  @override
  State<ShortcutCard> createState() => _ShortcutCardState();
}

class _ShortcutCardState extends State<ShortcutCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Add onTap event action
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          boxShadow: kShortcutCardBoxShadow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              widget.icon,
              color: widget.iconColor,
            ),
            Text(
              widget.label,
              style: TextStyle(
                fontSize: 18.0,
                color: widget.iconColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
