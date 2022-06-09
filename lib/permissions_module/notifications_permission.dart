import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:social/constants.dart';
import 'package:social/permissions_module/sync_contact_permission.dart';
import 'package:social/widgets/custom_bottom_sticky_button.dart';

class AskNotificationsPermission extends StatefulWidget {
  const AskNotificationsPermission({Key? key}) : super(key: key);

  @override
  State<AskNotificationsPermission> createState() =>
      _AskNotificationsPermissionState();
}

class _AskNotificationsPermissionState
    extends State<AskNotificationsPermission> {
  bool onToggle = true;
  void toggleSwitch(bool value) {
    setState(() {
      onToggle = !onToggle;
      // TODO: Enable or disable notifications
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
            /// Notification Bell Gif
            SizedBox(
              height: height * 0.55,
              child: const Image(
                image: AssetImage('assets/gifs/notification_bell.gif'),
                fit: BoxFit.scaleDown,
              ),
            ),

            /// Heading
            const Text(
              'Turn on Notifications',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.025),

            /// SubText
            const Text(
              'Enable push Notifications to let send  you personal news and updates.',
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
                      'Turn on notifications',
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ),
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
        label: 'Next',
        onPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AskSyncContactPermission(),
            ),
          );
        },
      ),
    );
  }
}
