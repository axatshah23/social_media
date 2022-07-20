import 'package:flutter/material.dart';

import '../../../constants.dart';

class YourStoryButton extends StatefulWidget {
  const YourStoryButton({
    Key? key,
    required this.hasStory,
  }) : super(key: key);
  final bool hasStory;

  @override
  State<YourStoryButton> createState() => _YourStoryButtonState();
}

class _YourStoryButtonState extends State<YourStoryButton> {
  bool isViewed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// Check, does the user have any active story?
        if (widget.hasStory) {
          //TODO: Open the story
          setState(() {
            isViewed = true;
          });
        } else {
          // TODO: Take to create story page
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            /// Story stack

            Stack(
              children: [
                /// Stack Containing profile picture and border
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
                          colors: widget.hasStory
                              ? isViewed
                                  ? [
                                      const Color(0xFFD6D6D6),
                                      const Color(0xFFD6D6D6)
                                    ]
                                  : [
                                      const Color(0xFFFF906A),
                                      kPrimaryThemeColor,
                                    ]
                              : [
                                  Colors.white,
                                  Colors.white,
                                ],
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
                        image: const DecorationImage(
                          image: NetworkImage(
                              // TODO: get actual user profile image here.
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ12dDMIEyNQ4NnppnZkk4PKWDe9vH6uuT44Q&usqp=CAU'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),

                /// Optional Stack Containing add button symbol
                Visibility(
                  visible: !widget.hasStory,
                  child: Positioned(
                    bottom: 4.0,
                    right: 2.0,
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 16.0,
                      )),
                    ),
                  ),
                ),
              ],
            ),

            /// Name Text
            const SizedBox(height: 6.0),
            const SizedBox(
              height: 20.0,
              width: 75.0,
              child: Text(
                'Your Story',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
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
