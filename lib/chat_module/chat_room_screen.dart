import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/chat_module/components/appbar_action_button.dart';

import '../constants.dart';
import '../widgets/custom_back_button.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryScaffoldBackgroundGrey,
        centerTitle: true,

        /// Back button
        leading: CustomBackButton(
          onPress: () {
            Navigator.pop(context);
          },
        ),

        /// Title
        title: GestureDetector(
          onTap: () {
            // TODO: Open chat specific settings
          },
          child: Text(
            widget.title,
            style: kAppBarTitleTextStyle,
          ),
        ),

        /// Add new chat
        actions: [
          AppBarActionButton(
            icon: FontAwesomeIcons.phone,
            onPress: () {
              // TODO: Call
            },
          ),
          AppBarActionButton(
            icon: FontAwesomeIcons.video,
            onPress: () {
              // TODO: Video Call
            },
          ),
        ],
      ),
    );
  }
}
