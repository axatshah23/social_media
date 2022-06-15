import 'package:flutter/material.dart';
import 'package:social/constants.dart';
import 'package:social/find_friends_module/search_bar.dart';
import 'package:social/widgets/follow_account_bar.dart';

import '../lists.dart';

class FindFriendsScreen extends StatefulWidget {
  const FindFriendsScreen({Key? key}) : super(key: key);

  @override
  State<FindFriendsScreen> createState() => _FindFriendsScreenState();
}

class _FindFriendsScreenState extends State<FindFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kSecondaryScaffoldBackgroundGrey,
      appBar: AppBar(
        backgroundColor: kSecondaryAppBarBackgroundGrey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/home'));
                Navigator.pushNamed(context, '/home');
              },
              child: const Text(
                'Cancel',
                style: kCancelButtonTextStyle,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/home'));
                Navigator.pushNamed(context, '/home');
              },
              child: const Text(
                'Next',
                style: kNextButtonTextStyle,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.025),

          /// Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: const Text(
              'Find Friends',
              style: kFindFriendsTitleTextStyle,
            ),
          ),
          SizedBox(height: height * 0.02),

          /// Search Bar
          const CustomSearchBar(),
          SizedBox(height: height * 0.02),
          // TODO: Search bar functionality

          /// Listview of different accounts to follow
          // TODO: Functionality of displaying accounts based on settings and other features
          Expanded(
            child: ListView.builder(
              itemCount: imageAddress.length,
              itemBuilder: (context, index) {
                return FollowAccountBar(
                  imageURL: imageAddress[index],
                  mainText: name[index],
                  subText: subText[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
