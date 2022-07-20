import 'package:flutter/material.dart';
import 'package:social/home_module/post/display_post.dart';
import 'package:social/home_module/story/display_story.dart';
import 'package:social/lists.dart';

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

          /// Post
          DisplayPost(
            profilePicture: imageAddress[2],
            name: name[2],
            isLocationShared: true,
            location: 'Russia',
            time: '9 seconds ago',
            caption: 'Enjoying the weekend',
            numberOfContent: 2,
            isImage: [false, false],
            content: [
              'https://assets.mixkit.co/videos/preview/mixkit-group-of-friends-partying-happily-4640-large.mp4',
              'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
            ],
            likeCounter: 1506,
            commentCounter: 22,
          ),
          DisplayPost(
            profilePicture: imageAddress[10],
            name: name[10],
            isLocationShared: false,
            time: '5 hours ago',
            caption: caption[10],
            numberOfContent: 3,
            isImage: [true, false, true],
            content: [
              imageAddress[10],
              'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
              imageAddress[11]
            ],
            likeCounter: 1578,
            commentCounter: 25,
          ),
          DisplayPost(
            profilePicture: imageAddress[14],
            name: name[14],
            isLocationShared: false,
            time: '7 Days ago',
            caption: caption[14],
            numberOfContent: 1,
            isImage: [true],
            content: [imageAddress[14]],
            likeCounter: 154,
            commentCounter: 15,
          ),
        ],
      ),
    );
  }
}
