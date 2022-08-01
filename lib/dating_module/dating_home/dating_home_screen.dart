import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/constants.dart';
import 'package:social/dating_module/dating_home/components/like_dislike_button.dart';
import 'package:social/lists.dart';
import 'package:swipable_stack/swipable_stack.dart';

import 'dating_details_screen.dart';

class DatingHomeScreen extends StatefulWidget {
  const DatingHomeScreen({Key? key}) : super(key: key);

  @override
  State<DatingHomeScreen> createState() => _DatingHomeScreenState();
}

class _DatingHomeScreenState extends State<DatingHomeScreen> {
  SwipableStackController controller = SwipableStackController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height * 0.65,
            margin: const EdgeInsets.all(16.0),
            child: SwipableStack(
              itemCount: imageAddress.length,
              allowVerticalSwipe: false,
              controller: controller,
              swipeAnchor: SwipeAnchor.bottom,
              viewFraction: 0.8,
              onSwipeCompleted: (index, direction) {
                // TODO: Save the swipe-direction of respective person to the database.
                print(direction);
              },
              builder: (context, swipeProperty) {
                /// Swipeable Card
                return GestureDetector(
                  onTap: () {
                    // TODO: Full Screen Mode
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, a, b) => DatingDetailsPage(
                          controller: controller,
                        ),
                      ),
                    );
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      /// Background Image Card
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              imageAddress[swipeProperty.index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      /// Name and Other info
                      Container(
                        height: 100.0,
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /// Name and Age
                            Row(
                              children: [
                                /// Name
                                Text(
                                  name[swipeProperty.index],
                                  style: kDatingCardNameTextStyle,
                                ),

                                /// Age
                                const Text(
                                  ', 24',
                                  style: kDatingCardNameTextStyle,
                                )
                              ],
                            ),
                            SizedBox(height: 6.0),

                            /// Profession and social media icons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// Profession
                                const Text(
                                  'Avenger',
                                  style: kDatingProfessionTextStyle,
                                ),

                                /// Social Media Icons
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.facebook_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 6.0),
                                    Icon(
                                      Icons.snapchat_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),

          /// Like, Dislike and message Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Dislike Button
              LikeDislikeButton(
                like: false,
                controller: controller,
                color: Colors.red,
                icon: FontAwesomeIcons.xmark,
              ),

              /// Message Button
              Stack(
                children: [
                  /// Button
                  GestureDetector(
                    onTap: () {
                      // TODO: Redirect to message screen
                    },
                    child: const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.blueAccent,
                      child: Center(
                        child: Icon(
                          Icons.messenger,
                          color: Colors.white,
                          size: 32.0,
                        ),
                      ),
                    ),
                  ),

                  /// Indicator
                  // TODO: Set this visibility such that only once can  a message be sent to any person or free
                  Visibility(
                    visible: true,
                    child: Positioned(
                      bottom: 0.0,
                      right: -0.0,
                      child: Container(
                        width: 21.0,
                        height: 21.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          shape: BoxShape.circle,
                          color: kPrimaryThemeColor,
                        ),
                        child: const Center(
                          child: Text(
                            '1',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Like Button
              LikeDislikeButton(
                like: true,
                controller: controller,
                color: Colors.pinkAccent,
                icon: Icons.favorite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
