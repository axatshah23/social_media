import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:social/constants.dart';
import 'package:social/widgets/custom_bottom_sticky_button.dart';

class AskSyncContactPermission extends StatefulWidget {
  const AskSyncContactPermission({Key? key}) : super(key: key);

  @override
  State<AskSyncContactPermission> createState() =>
      _AskSyncContactPermissionState();
}

class _AskSyncContactPermissionState extends State<AskSyncContactPermission> {
  bool onToggle = true;
  void toggleSwitch(bool value) {
    setState(() {
      onToggle = !onToggle;
      // TODO: Enable or disable contacts sync
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Sync Contact Gif
            SizedBox(
              height: height * 0.55,
              child: const Image(
                image: AssetImage('assets/gifs/sync_contact.gif'),
                fit: BoxFit.scaleDown,
              ),
            ),

            /// Heading
            const Text(
              'Sync Contacts',
              style: kPermissionModuleHeadingTextStyle,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.025),

            /// SubText
            const Text(
              'Sync your contacts to find people that you may know or invite others.',
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.05),

            /// Toggle Button Container
            Container(
              width: width * 0.8,
              decoration: BoxDecoration(
                color: kFieldFillColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Sync Contacts',
                      style: kPermissionToggleTextStyle,
                    ),
                    FlutterSwitch(
                      value: onToggle,
                      onToggle: toggleSwitch,
                      width: 50.0,
                      height: 35.0,
                      activeColor: kPrimaryThemeColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomStickyButton(
        label: 'Continue',
        onPress: () {
          Navigator.popUntil(context, ModalRoute.withName('/home'));
          Navigator.pushNamed(context, '/findFriends');
        },
      ),
    );
  }
}
