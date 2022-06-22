import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class HomeScreenSearchBar extends StatefulWidget {
  const HomeScreenSearchBar({Key? key}) : super(key: key);

  @override
  State<HomeScreenSearchBar> createState() => _HomeScreenSearchBarState();
}

class _HomeScreenSearchBarState extends State<HomeScreenSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 16.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: kHomeSearchBarBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: kHomeSearchBarTextIconColor,
            size: 20.0,
          ),
          SizedBox(width: 15.0),
          Text(
            'Search',
            style: kHomeSearchBarTextStyle,
          )
        ],
      ),
    );
  }
}
