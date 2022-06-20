import 'package:flutter/material.dart';
import 'package:social/constants.dart';
import 'package:social/notification_module/components/custom_notification_tabbar.dart';
import 'package:social/notification_module/notification_friends_screen.dart';
import 'package:social/notification_module/notification_photos_screen.dart';

import '../widgets/custom_back_button.dart';
import 'notification_posts_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kSecondaryAppBarBackgroundGrey,

          /// Back Button
          leading: CustomBackButton(
            onPress: () {
              Navigator.popAndPushNamed(context, '/home');
            },
          ),

          /// Title
          centerTitle: true,
          title: const Text(
            'Notifications',
            style: kAppBarTitleTextStyle,
          ),

          /// TabBar
          bottom: CustomNotificationTabBar().notificationTabBar(),
        ),

        /// TabBarView for different types of notifications
        body: const TabBarView(
          children: [
            NotificationPostsScreen(),
            NotificationPhotosScreen(),
            NotificationFriendsScreen(),
          ],
        ),
      ),
    );
  }
}
