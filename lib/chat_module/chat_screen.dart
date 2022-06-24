import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/chat_module/components/appbar_action_button.dart';
import 'package:social/chat_module/components/chat_bar.dart';
import 'package:social/chat_module/components/online_tab.dart';
import 'package:social/constants.dart';
import 'package:social/widgets/custom_back_button.dart';

import '../lists.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryScaffoldBackgroundGrey,
      appBar: AppBar(
        backgroundColor: kSecondaryAppBarBackgroundGrey,
        centerTitle: true,

        /// Back button
        leading: CustomBackButton(
          onPress: () {
            Navigator.popAndPushNamed(context, '/home');
          },
        ),

        /// Title
        title: const Text(
          'Messages',
          style: kAppBarTitleTextStyle,
        ),

        /// Add new chat
        actions: [
          AppBarActionButton(
            icon: FontAwesomeIcons.userPlus,
            onPress: () {
              // TODO: Add new chat option
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Online user container
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
              color: Colors.white,
              width: double.infinity,
              height: 175.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title
                  const Text(
                    'ONLINE USERS',
                    style: kOnlineUserHeadingTextStyle,
                  ),
                  const SizedBox(height: 20.0),

                  /// Listview of online users
                  // TODO: Display online users
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageAddress.length,
                      itemBuilder: (context, index) {
                        return OnlineTab(
                          name: name[index],
                          imageURL: imageAddress[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),

            /// Chat list
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: imageAddress.length,
              itemBuilder: (context, index) {
                return ChatBar(
                  imageURL: imageAddress[index],
                  name: name[index],
                  lastMessage: lastMessage[index],
                  numberOfNewMessages: numberOfNewMessages[index],
                  time: '09:15 AM',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
