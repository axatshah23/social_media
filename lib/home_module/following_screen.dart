import 'package:flutter/material.dart';
import 'package:social/home_module/components/story_components/stories_container.dart';
import 'package:social/lists.dart';

import 'post/new_image_post.dart';

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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: imageAddress.length,
            itemBuilder: (BuildContext context, index) {
              return NewImagePost(
                profilePicture: imageAddress[index],
                name: name[index],
                location: location[index],
                time: time[index],
                caption: caption[index],
                imageLink: imageAddress[index],
                likeCounter: 155,
                commentCounter: 11,
              );
            },
          )
        ],
      ),
    );
  }
}
