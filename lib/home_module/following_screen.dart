import 'package:flutter/material.dart';
import 'package:social/home_module/components/story_components/stories_container.dart';
import 'package:social/home_module/post/display_post.dart';
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
          const StoryContainer(),
          const SizedBox(width: 12.0),

          /// Posts
          /// Single-Image
          // ListView.builder(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: imageAddress.length,
          //   itemBuilder: (BuildContext context, index) {
          //     return NewPost(
          //       profilePicture: imageAddress[index],
          //       name: name[index],
          //       location: location[index],
          //       time: time[index],
          //       caption: caption[index],
          //       multipleImages: false,
          //       image: imageAddress[index],
          //       likeCounter: 1506,
          //       commentCounter: 11,
          //     );
          //   },
          // ),
          /// MultiImage
          // ListView.builder(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: imageAddress.length,
          //   itemBuilder: (BuildContext context, index) {
          //     return NewPost(
          //       profilePicture: imageAddress[index],
          //       name: name[index],
          //       location: location[index],
          //       time: time[index],
          //       caption: caption[index],
          //       multipleImages: true,
          //       imageList: imageAddress,
          //       likeCounter: 155,
          //       commentCounter: 11,
          //     );
          //   },
          // ),
          /// Mix
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              DisplayPost(
                profilePicture: imageAddress[14],
                name: name[14],
                location: 'Hell\'s Kitchen, NY',
                time: '5 hours ago',
                caption: caption[14],
                hasMultipleContent: false,
                singleContent: imageAddress[14],
                likeCounter: 1500,
                commentCounter: 17,
              ),
              DisplayPost(
                profilePicture: imageAddress[13],
                name: name[13],
                location: 'Egypt',
                time: '7 days ago',
                caption: 'Hello Friends',
                hasMultipleContent: true,
                multipleContent: imageAddress.sublist(13, 15),
                likeCounter: 1507,
                commentCounter: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
