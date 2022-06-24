import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/lists.dart';
import 'package:social/profile_module/components/logout_button.dart';
import 'package:social/profile_module/components/profile_container.dart';

import '../constants.dart';
import '../widgets/mydivider.dart';
import 'components/profile_bottom_buttons.dart';
import 'components/shortcut_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String label = 'See more';
  bool isVisible = false;
  int calculateItemCount(bool hidden) {
    int n = shortcutIcons.length;
    if (n % 2 == 0) {
      // For even Eg: 12, 14
      if ((n / 2).floor() % 2 == 0) {
        // For even modulo Eg: 12
        return n ~/ 2;
      } else {
        // For odd modulo Eg: 14
        return hidden ? ((n / 2) - 1).toInt() : ((n / 2) + 1).toInt();
      }
    } else {
      //for odd Eg: 11, 13
      if ((n / 2).floor() % 2 == 0) {
        // For even modulo Eg: 13
        return hidden ? (n / 2).floor() + 1 : (n / 2).floor();
      } else {
        // For odd modulo Eg: 11
        return hidden ? ((n / 2)).floor() : ((n / 2) + 1).floor();
      }
    }
  }

  void changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryScaffoldBackgroundGrey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Container for Profile Section
            const ProfileContainer(),

            /// Display half of the shortcuts
            GridView.builder(
              padding: const EdgeInsets.only(top: 8.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.8,
              ),
              itemCount: calculateItemCount(false),
              itemBuilder: (BuildContext ctx, index) {
                return ShortcutCard(
                  icon: shortcutIcons[index],
                  iconColor: shortcutColors[index],
                  label: shortcutLabels[index],
                );
              },
            ),

            /// Display other half of the shortcuts based on visibility
            Visibility(
              visible: isVisible,
              child: GridView.builder(
                padding: const EdgeInsets.only(top: 8.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.8,
                ),
                itemCount: calculateItemCount(true),
                itemBuilder: (BuildContext ctx, index) {
                  return ShortcutCard(
                    icon: shortcutIcons[index + calculateItemCount(false)],
                    iconColor:
                        shortcutColors[index + calculateItemCount(false)],
                    label: shortcutLabels[index + calculateItemCount(false)],
                  );
                },
              ),
            ),

            /// See more or less toggle button
            GestureDetector(
              onTap: () {
                setState(() {
                  if (!isVisible) {
                    label = 'See less';
                    isVisible = true;
                  } else {
                    label = 'See more';
                    isVisible = false;
                  }
                });
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(7.5),
                //height: kBoxHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.5),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0x21000000),
                        offset: Offset(
                          4.0,
                          4.0,
                        ),
                        blurRadius: 4.0),
                  ],
                ),
                child: Center(
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            /// Rest of the content
            const MyDivider(),
            const ShortcutBottomButtons(
                FontAwesomeIcons.handshakeAngle, 'Community Resources'),
            const MyDivider(),
            const ShortcutBottomButtons(
                FontAwesomeIcons.circleInfo, 'Help & Support'),
            const MyDivider(),
            const ShortcutBottomButtons(
                FontAwesomeIcons.gears, 'Settings & privacy'),
            const MyDivider(),
            const LogOutButton(),
          ],
        ),
      ),
    );
  }
}
