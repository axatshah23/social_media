import 'package:flutter/material.dart';

import '../constants.dart';
import 'follow_toggle_button.dart';

class FollowAccountBar extends StatefulWidget {
  const FollowAccountBar(
      {Key? key,
      required this.imageURL,
      required this.mainText,
      required this.subText})
      : super(key: key);
  final String imageURL;
  final String mainText;
  final String subText;

  @override
  State<FollowAccountBar> createState() => _FollowAccountBarState();
}

class _FollowAccountBarState extends State<FollowAccountBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Added another row so that elements can be positioned at ends
            Row(
              children: [
                /// Profile Picture
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(widget.imageURL),
                ),
                SizedBox(width: 16.0),

                /// Name and other info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.mainText,
                      style: kFollowBarNameTextStyle,
                    ),
                    SizedBox(height: 2.5),
                    Text(
                      widget.subText,
                      style: kFollowBarSubTextStyle,
                    )
                  ],
                ),
              ],
            ),

            /// Follow/Following Button
            const FollowToggleButton(),
          ],
        ),
      ),
    );
  }
}
