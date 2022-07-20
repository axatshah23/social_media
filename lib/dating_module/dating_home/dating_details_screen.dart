import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swipable_stack/swipable_stack.dart';

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
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: height * 0.70,
              width: double.infinity,
              child: SwipableStack(
                itemCount: imageAddress.length,
                allowVerticalSwipe: false,
                controller: widget.controller,
                swipeAnchor: SwipeAnchor.bottom,
                viewFraction: 1,
                onSwipeCompleted: (index, direction) {
                  // TODO: Save the swipe-direction of respective person to the database.
                  print(direction);
                },
                builder: (context, itemSwipeProperties) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageAddress[itemSwipeProperties.index],
                        ),
                        fit: BoxFit.cover,
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
                  controller: widget.controller,
                  color: Colors.red,
                  icon: FontAwesomeIcons.xmark,
                ),

                /// Like Button
                LikeDislikeButton(
                  like: true,
                  controller: widget.controller,
                  color: Colors.pinkAccent,
                  icon: Icons.favorite,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
