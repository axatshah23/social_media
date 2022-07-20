import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:social/dating_module/dating_chat/dating_chat_screen.dart';
import 'package:social/dating_module/dating_home/dating_home_screen.dart';
import 'package:social/dating_module/dating_like/dating_like_screen.dart';
import 'package:social/dating_module/dating_profile/dating_profile_screen.dart';
import 'package:social/widgets/custom_back_button.dart';

class DatingNavBar extends StatefulWidget {
  const DatingNavBar({Key? key}) : super(key: key);

  @override
  State<DatingNavBar> createState() => _DatingNavBarState();
}

class _DatingNavBarState extends State<DatingNavBar> {
  int currIndex = 0;
  // NavBar Icon List
  List<DotNavigationBarItem> navbarIcons = [
    DotNavigationBarItem(
        icon: const Icon(
      Icons.home,
    )),
    DotNavigationBarItem(
        icon: const Icon(
      Icons.favorite,
    )),
    DotNavigationBarItem(
        icon: const Icon(
      Icons.messenger,
    )),
    DotNavigationBarItem(
        icon: const Icon(
      Icons.person,
    )),
  ];

  // NavBar Item Color list
  List<Color> selectedColor = [
    Colors.pinkAccent,
    Colors.red,
    Colors.blueAccent,
    Colors.purpleAccent,
  ];

  // Corresponding screens list
  List<Widget> screens = const [
    DatingHomeScreen(),
    DatingLikeScreen(),
    DatingChatScreen(),
    DatingProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(
          onPress: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30.0,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 30.0,
              )),
        ],
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: currIndex,
        selectedItemColor: selectedColor[currIndex],
        unselectedItemColor: Colors.grey,
        dotIndicatorColor: Colors.transparent,
        boxShadow: const [
          BoxShadow(
            color: Color(0x32BDBDBD),
            offset: Offset(0, 4.0),
            blurRadius: 4.0,
            spreadRadius: 4.0,
          ),
        ],
        onTap: (changedIndex) {
          setState(() {
            currIndex = changedIndex;
          });
        },
        items: navbarIcons,
      ),
      body: IndexedStack(
        index: currIndex,
        children: screens,
      ),
    );
  }
}
