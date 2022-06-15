import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottomStickyButton extends StatelessWidget {
  const CustomBottomStickyButton(
      {Key? key, required this.onPress, required this.label})
      : super(key: key);
  final Function() onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        width: double.infinity,
        //height: 75.0,
        color: kPrimaryThemeColor,
        //alignment: Alignment.center,
        child: Text(
          label,
          style: kCustomBottomStickyButtonTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
