import 'package:flutter/material.dart';
import 'package:social/constants.dart';

import '../../../find_friends_module/find_friend_search_bar.dart';
import '../../../lists.dart';
import '../../../widgets/custom_back_button.dart';
import '../../../widgets/follow_account_bar.dart';

class ViewedByScreen extends StatefulWidget {
  const ViewedByScreen({Key? key, required this.likes}) : super(key: key);
  final int likes;

  @override
  State<ViewedByScreen> createState() => _ViewedByScreenState();
}

class _ViewedByScreenState extends State<ViewedByScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    /// Method that returns screen according to views
    Widget viewedBody() {
      if (widget.likes == 0) {
        return const Center(
          child: Text(
            'No Views yet',
            textScaleFactor: 2.0,
          ),
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.025),

            /// Search Bar
            const FindFriendSearchBar(),
            SizedBox(height: height * 0.02),
            // TODO: Search bar functionality

            /// Listview of different accounts to follow
            // TODO: Functionality of displaying accounts who actually have viewed the image
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
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CustomBackButton(
          onPress: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Views',
          style: kAppBarTitleTextStyle,
        ),
      ),
      body: viewedBody(),
    );
  }
}
