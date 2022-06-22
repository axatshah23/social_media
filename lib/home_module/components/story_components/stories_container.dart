import 'package:flutter/material.dart';
import 'package:social/home_module/components/story_components/story_tab.dart';

import '../../../lists.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Listview of online users
          // TODO: Display Stories
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageAddress.length,
              itemBuilder: (context, index) {
                return StoryTab(
                  name: name[index],
                  imageURL: imageAddress[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
