import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomNotificationBar extends StatefulWidget {
  const CustomNotificationBar(
      {Key? key,
      required this.image,
      required this.name,
      required this.followUpText,
      required this.time,
      required this.extraContent})
      : super(key: key);
  final String image;
  final String name;
  final String followUpText;
  final String time;
  final Widget extraContent;

  @override
  State<CustomNotificationBar> createState() => _CustomNotificationBarState();
}

class _CustomNotificationBarState extends State<CustomNotificationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.75),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Profile Picture
          CircleAvatar(
            backgroundColor: kPrimaryThemeColor,
            backgroundImage: NetworkImage(widget.image),
            radius: 30,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            /// Notification content
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name and Follow-up text
                Text.rich(
                  TextSpan(
                    /// Name
                    text: widget.name,
                    style: kNotificationNameTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                        /// Follow-up text
                        text: ' ${widget.followUpText}',
                        style: kNotificationFollowUpTextStyle,
                      ),
                    ],
                  ),
                ),

                /// Widget to display small posts images
                // TODO: Pass certain photos or widget to display in here.
                widget.extraContent,

                /// Time elapsed
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    widget.time,
                    style: TextStyle(color: kSubTextColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
