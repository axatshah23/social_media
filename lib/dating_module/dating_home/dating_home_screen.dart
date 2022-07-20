import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              builder: (context, itemSwipeProperties) {
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageAddress[itemSwipeProperties.index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// Dislike Button
              LikeDislikeButton(
                like: false,
                controller: controller,
                color: Colors.red,
                icon: FontAwesomeIcons.xmark,
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
