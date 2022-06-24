// Static bar need to change this

import 'package:flutter/material.dart';
import 'package:social/constants.dart';

class FindFriendSearchBar extends StatelessWidget {
  const FindFriendSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: kSearchBarBorderColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: const [
              Icon(
                Icons.search,
                size: 24.0,
                color: Color(0xFFACB1C0),
              ),
              SizedBox(width: 16.0),
              Text(
                'Search',
                style: TextStyle(
                    color: Color(0xFFACB1C0),
                    fontSize: 19.0,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
