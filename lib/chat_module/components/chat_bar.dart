import 'package:flutter/material.dart';

import '../../constants.dart';

class ChatBar extends StatefulWidget {
  const ChatBar(
      {Key? key,
      required this.imageURL,
      required this.name,
      required this.lastMessage,
      required this.newMessage,
      required this.numberOfNewMessages,
      required this.time})
      : super(key: key);
  final String imageURL;
  final String name;
  final String lastMessage;
  final bool newMessage;
  final String numberOfNewMessages;
  final String time;

  @override
  State<ChatBar> createState() => _ChatBarState();
}

class _ChatBarState extends State<ChatBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        //TODO: Take to the specific chat
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(width: 0.75, color: Colors.grey),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Image and Name plus Subtext
            Row(
              children: [
                /// Image Circle
                SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      /// Profile image circle
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: NetworkImage(widget.imageURL),
                        backgroundColor: kSecondaryScaffoldBackgroundGrey,
                      ),

                      /// New messages dot
                      // TODO: Program such that only visible when there are new messages
                      Visibility(
                        visible: widget.newMessage,
                        child: Positioned(
                          bottom: 0.0,
                          right: -0.0,
                          child: Container(
                            width: 22.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              color: kPrimaryThemeColor,
                            ),
                            child: Center(
                                child: Text(
                              widget.numberOfNewMessages,
                              style: const TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 24.0),

                /// Name and subtext
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6.0),
                    SizedBox(
                      width: width * 0.5,
                      child: Text(
                        widget.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: kSubTextColor, fontSize: 14.0),
                      ),
                    ),
                  ],
                )
              ],
            ),

            /// Time
            // TODO: Program time to appear here
            Text(
              widget.time,
              style: const TextStyle(
                color: kSubTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
