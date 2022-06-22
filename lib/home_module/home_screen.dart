import 'package:flutter/material.dart';
import 'package:social/constants.dart';
import 'package:social/home_module/components/create_button.dart';
import 'package:social/home_module/components/home_screen_search_bar.dart';
import 'package:social/home_module/discovery_screen.dart';
import 'package:social/home_module/following_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kSecondaryScaffoldBackgroundGrey,
        appBar: AppBar(
          backgroundColor: Colors.white,

          /// Search Bar
          title: const HomeScreenSearchBar(),

          /// Create Button
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: CreateButton(),
            ),
          ],

          /// TabBarView
          //bottom: CustomTabBar(homeTabs).customTabBar(),
        ),
        body: TabBarView(
          children: [
            FollowingScreen(),
            DiscoveryScreen(),
          ],
        ),
      ),
    );
  }
}
