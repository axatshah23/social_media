import 'package:flutter/material.dart';
import 'package:social/constants.dart';

class SocialSignUpButtons extends StatefulWidget {
  const SocialSignUpButtons(
      {Key? key,
      required this.icon,
      required this.label,
      required this.backgroundColor,
      required this.onPress,
      required this.iconColor})
      : super(key: key);
  final IconData icon;
  final String label;
  final Color backgroundColor;
  final Color iconColor;
  final Function()? onPress;

  @override
  State<SocialSignUpButtons> createState() => _SocialSignUpButtonsState();
}

class _SocialSignUpButtonsState extends State<SocialSignUpButtons> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GestureDetector(
        onTap: widget.onPress,
        child: Container(
          width: width * 0.72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: widget.backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  widget.icon,
                  color: widget.iconColor,
                  size: 30.0,
                ),
                const SizedBox(width: 30.0),
                Flexible(
                  child: Text(
                    widget.label,
                    overflow: TextOverflow.ellipsis,
                    style: kSocialButtonsLabelStyle,
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
