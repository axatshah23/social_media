import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:social/constants.dart';
import 'package:social/home_module/home_screen.dart';
import 'package:social/notification_module/notification_screen.dart';
import 'package:social/profile_module/profile_screen.dart';

import '../chat_module/chat_screen.dart';
import '../stream_module/stream_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currIndex = 0;
  List<BottomNavigationBarItem> navbar = [
    const BottomNavigationBarItem(
      icon: Icon(LineIcons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(LineIcons.television),
      label: 'Stream',
    ),
    const BottomNavigationBarItem(
      icon: Icon(LineIcons.facebookMessenger),
      label: 'Chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(LineIcons.bell),
      label: 'Activity',
    ),
    const BottomNavigationBarItem(
      icon: Icon(LineIcons.user),
      label: 'Profile',
    ),
  ];

// Corresponding screens list
  List<Widget> screens = [
    const HomeScreen(),
    const StreamScreen(),
    const ChatScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 6.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kNavBarBackgroundColor,
        selectedItemColor: kNavBarSelectedItemColor,
        unselectedItemColor: kNavBarUnselectedItemColor,
        selectedFontSize: kNavBarFontSize,
        unselectedFontSize: kNavBarFontSize,
        iconSize: 32.0,
        currentIndex: currIndex,
        items: navbar,
        onTap: (changedIndex) {
          setState(() {
            currIndex = changedIndex;
          });
        },
      ),
    );
  }
}
