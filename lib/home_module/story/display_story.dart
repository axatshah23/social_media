import 'package:flutter/material.dart';
import 'package:social/home_module/story/components/story_button.dart';
import 'package:social/home_module/story/components/your_story_button.dart';

import '../../lists.dart';

class StoryContainer extends StatefulWidget {
  const StoryContainer({Key? key}) : super(key: key);

  @override
  State<StoryContainer> createState() => _StoryContainerState();
}

class _StoryContainerState extends State<StoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
      width: double.infinity,
      height: 134.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFE0E0E0))),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const YourStoryButton(
              hasStory: true,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: imageAddress.length,
              itemBuilder: (context, index) {
                return StoryButton(
                  name: name[index],
                  imageURL: imageAddress[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
