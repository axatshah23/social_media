import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomNotificationTabBar {
  PreferredSize notificationTabBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 1.5, vertical: 1.5),
        decoration: BoxDecoration(
          color: kTabBarUnselectedTabColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TabBar(
          indicator: BoxDecoration(
            color: kTabBarSelectedTabColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          labelColor: kSelectedTabTextColor,
          unselectedLabelColor: kUnselectedTabTextColor,
          labelPadding: const EdgeInsets.symmetric(vertical: 6.0),
          labelStyle: kTabBarLabelTextStyle,
          unselectedLabelStyle: kTabBarLabelTextStyle,
          tabs: const [
            Text('Posts'),
            Text('Photos'),
            Text('Friends'),
          ],
        ),
      ),
    );
  }
}
