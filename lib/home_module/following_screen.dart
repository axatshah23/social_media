import 'package:flutter/material.dart';
import 'package:social/home_module/components/story_components/stories_container.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({Key? key}) : super(key: key);

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// Stories
          StoryContainer(),
          SizedBox(width: 12.0),
        ],
      ),
    );
  }
}
