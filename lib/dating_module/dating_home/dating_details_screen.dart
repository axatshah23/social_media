import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/chat_module/components/interested_in_chips.dart';
import 'package:social/dating_module/dating_home/components/message_button.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../../constants.dart';
import '../../lists.dart';
import 'components/like_dislike_button.dart';

class DatingDetailsPage extends StatefulWidget {
  DatingDetailsPage({
    Key? key,
    required this.controller,
  }) : super(key: key);
  SwipableStackController controller;

  @override
  State<DatingDetailsPage> createState() => _DatingDetailsPageState();
}

class _DatingDetailsPageState extends State<DatingDetailsPage> {
  SwipableStackController controller = SwipableStackController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SwipableStack(
      itemCount: imageAddress.length,
      allowVerticalSwipe: false,
      controller: controller,
      swipeAnchor: SwipeAnchor.bottom,
      onSwipeCompleted: (index, direction) {
        // TODO: Save the swipe-direction of respective person to the database.
        print(direction);
      },
      builder: (context, swipeProperty) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Background image and all other info
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Background Image, Name, Profession, Media Icons and back
                        Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            /// Background Image Card
                            Container(
                              height: height * 0.65,
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

                            /// Name and Profession
                            Container(
                              height: 90.0,
                              width: double.infinity,
                              padding: const EdgeInsets.all(16.0),
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

                                  /// Profession and social media icons
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                            ),

                            /// Back Button
                            Positioned(
                              left: 0.0,
                              top: 30.0,
                              child: IconButton(
                                icon: const Icon(
                                  FontAwesomeIcons.xmark,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),

                        /// About me title
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                          child: Text(
                            'About me',
                            style: kDatingDetailTitleTextStyle,
                          ),
                        ),

                        /// About me content
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
                          child: Text(
                            lastMessage[swipeProperty.index],
                            style: kDatingDetailContentTextStyle,
                          ),
                        ),

                        /// Interested in title
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                          child: Text(
                            'Interested in',
                            style: kDatingDetailTitleTextStyle,
                          ),
                        ),

                        /// Interested in content
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: const [
                              CustomChips(
                                icon: Icons.videogame_asset,
                                iconColor: Colors.black,
                                label: 'Gamer',
                                chipBackgroundColor: Color(0xFFF2F2F2),
                              ),
                              CustomChips(
                                icon: Icons.sports,
                                iconColor: Colors.yellow,
                                label: 'Athlete',
                                chipBackgroundColor: Color(0xFFFFF7E1),
                              ),
                              CustomChips(
                                icon: Icons.money,
                                iconColor: Colors.green,
                                label: 'Billionaire',
                                chipBackgroundColor: Color(0xFFEDF7DD),
                              ),
                              CustomChips(
                                icon: Icons.piano,
                                iconColor: Colors.black,
                                label: 'Pianist',
                                chipBackgroundColor: Color(0xFFFFF4F4),
                              ),
                              CustomChips(
                                icon: Icons.movie_filter_outlined,
                                iconColor: Colors.black,
                                label: 'Cinephile',
                                chipBackgroundColor: Color(0xFFF2F2F2),
                              ),
                              CustomChips(
                                icon: Icons.carpenter_sharp,
                                iconColor: Colors.red,
                                label: 'Carpenter',
                                chipBackgroundColor: Color(0xFFFFF4F4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// Buttons
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
                    MessageButton(),

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
          ),
        );
      },
    );
  }
}
