import 'package:flutter/material.dart';

import '../../../constants.dart';

class StoryTab extends StatefulWidget {
  const StoryTab({Key? key, required this.name, required this.imageURL})
      : super(key: key);
  final String name;
  final String imageURL;

  @override
  State<StoryTab> createState() => _StoryTabState();
}

class _StoryTabState extends State<StoryTab> {
  bool isViewed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO: Open Story and disable border
        setState(() {
          isViewed = true;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            /// Story stack

            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                /// Outline container
                Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: isViewed
                          ? [Color(0xFFD6D6D6), Color(0xFFD6D6D6)]
                          : [Color(0xFFFF906A), kPrimaryThemeColor],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),

                /// Profile Picture container
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                    image: DecorationImage(
                      image: NetworkImage(widget.imageURL),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            /// Name Text
            const SizedBox(height: 6.0),
            SizedBox(
              height: 20.0,
              width: 75.0,
              child: Text(
                widget.name,
                maxLines: 1,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: kOnlineUserTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
