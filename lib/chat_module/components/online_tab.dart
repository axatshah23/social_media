import 'package:flutter/material.dart';

import '../../constants.dart';
import '../chat_room_screen.dart';

class OnlineTab extends StatefulWidget {
  const OnlineTab({Key? key, required this.name, required this.imageURL})
      : super(key: key);
  final String name;
  final String imageURL;

  @override
  State<OnlineTab> createState() => _OnlineTabState();
}

class _OnlineTabState extends State<OnlineTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatRoomScreen(title: widget.name),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            /// Image and Active Dot
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
                    backgroundColor: kPrimaryThemeColor,
                  ),

                  /// Active Dot
                  Positioned(
                    bottom: 0.0,
                    right: -0.0,
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        color: kActiveDotColor,
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// Name Text
            const SizedBox(height: 8.0),
            SizedBox(
              height: 20.0,
              width: 80.0,
              child: Text(
                widget.name,
                maxLines: 1,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: kOnlineUserTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
