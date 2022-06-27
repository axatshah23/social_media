import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants.dart';

class TopInfoBar extends StatefulWidget {
  TopInfoBar({
    Key? key,
    required this.profilePicture,
    required this.name,
    required this.isLocationShared,
    this.location,
    required this.time,
  }) : super(key: key);
  final String profilePicture;
  final String name;
  final bool isLocationShared;
  String? location;
  final String time;

  @override
  State<TopInfoBar> createState() => _TopInfoBarState();
}

class _TopInfoBarState extends State<TopInfoBar> {
  // TODO: Have actual info here
  String subText() {
    String sub = '';
    if (widget.isLocationShared) {
      sub = '${widget.location} · ${widget.time}';
    } else {
      sub = widget.time;
    }
    return sub;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Row Containing profile image, name and location
        Row(
          children: [
            /// Profile Picture
            CircleAvatar(
              backgroundColor: kPrimaryThemeColor,
              radius: 28.0,
              backgroundImage: NetworkImage(widget.profilePicture),
            ),
            const SizedBox(width: 16.0),

            /// Column for name and location
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name
                SizedBox(
                  width: width * 0.6,
                  child: Text(
                    widget.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: kPostTitleTextStyle,
                  ),
                ),

                /// Location(Optional) and time
                SizedBox(
                  width: width * 0.6,
                  child: Text(
                    subText(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kPostLocationTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),

        /// Settings
        GestureDetector(
          onTap: () {
            // TODO: Open Post Settings
          },
          child: const Icon(
            FontAwesomeIcons.ellipsisVertical,
            size: 16.0,
          ),
        ),
      ],
    );
  }
}
