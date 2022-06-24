import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/constants.dart';
import 'package:social/lists.dart';
import 'package:social/widgets/custom_back_button.dart';

class CommentedByScreen extends StatefulWidget {
  const CommentedByScreen({
    Key? key,
    required this.comments,
    required this.image,
    required this.aspectRatio,
  }) : super(key: key);
  final int comments;
  final String image;
  final double aspectRatio;

  @override
  State<CommentedByScreen> createState() => _CommentedByScreenState();
}

class _CommentedByScreenState extends State<CommentedByScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(
          onPress: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Comments',
          style: kAppBarTitleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// content itself
            AspectRatio(
              aspectRatio: widget.aspectRatio,
              child: Image(
                image: NetworkImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),

            /// Comments
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFE0E0E0),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Row containing info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Row Containing profile image, name and location
                      Row(
                        children: [
                          /// Profile Picture
                          CircleAvatar(
                            backgroundColor: kPrimaryThemeColor,
                            radius: 24.0,
                            backgroundImage: NetworkImage(imageAddress[0]),
                          ),
                          const SizedBox(width: 16.0),

                          /// Column for name and location
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Name
                              SizedBox(
                                width: width * 0.6,
                                child: Text(
                                  'Steve Rogers',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: kCommentTitleTextStyle,
                                ),
                              ),

                              /// Location(Optional) and time
                              SizedBox(
                                width: width * 0.6,
                                child: Text(
                                  '2 hours ago',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: kCommentLocationTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      /// Settings
                      GestureDetector(
                        onTap: () {
                          // TODO: Open Post Settings
                        },
                        child: const Icon(
                          FontAwesomeIcons.ellipsisVertical,
                          size: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),

                  /// Comment content
                  Text(
                    lastMessage[14],
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 12.0),

                  /// Reply Button
                  Text(
                    'Reply',
                    style: TextStyle(fontSize: 15.0, color: kSubTextColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFE0E0E0),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Row containing info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Row Containing profile image, name and location
                      Row(
                        children: [
                          /// Profile Picture
                          CircleAvatar(
                            backgroundColor: kPrimaryThemeColor,
                            radius: 24.0,
                            backgroundImage: NetworkImage(imageAddress[0]),
                          ),
                          const SizedBox(width: 16.0),

                          /// Column for name and location
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Name
                              SizedBox(
                                width: width * 0.6,
                                child: Text(
                                  'Steve Rogers',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: kCommentTitleTextStyle,
                                ),
                              ),

                              /// Location(Optional) and time
                              SizedBox(
                                width: width * 0.6,
                                child: Text(
                                  '2 hours ago',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: kCommentLocationTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      /// Settings
                      GestureDetector(
                        onTap: () {
                          // TODO: Open Post Settings
                        },
                        child: const Icon(
                          FontAwesomeIcons.ellipsisVertical,
                          size: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),

                  /// Comment content
                  Text(
                    lastMessage[14],
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 12.0),

                  /// Reply Button
                  Text(
                    'Reply',
                    style: TextStyle(fontSize: 15.0, color: kSubTextColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFE0E0E0),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Row containing info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Row Containing profile image, name and location
                      Row(
                        children: [
                          /// Profile Picture
                          CircleAvatar(
                            backgroundColor: kPrimaryThemeColor,
                            radius: 24.0,
                            backgroundImage: NetworkImage(imageAddress[0]),
                          ),
                          const SizedBox(width: 16.0),

                          /// Column for name and location
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Name
                              SizedBox(
                                width: width * 0.6,
                                child: Text(
                                  'Steve Rogers',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: kCommentTitleTextStyle,
                                ),
                              ),

                              /// Location(Optional) and time
                              SizedBox(
                                width: width * 0.6,
                                child: Text(
                                  '2 hours ago',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: kCommentLocationTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      /// Settings
                      GestureDetector(
                        onTap: () {
                          // TODO: Open Post Settings
                        },
                        child: const Icon(
                          FontAwesomeIcons.ellipsisVertical,
                          size: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),

                  /// Comment content
                  Text(
                    lastMessage[14],
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 12.0),

                  /// Reply Button
                  Text(
                    'Reply',
                    style: TextStyle(fontSize: 15.0, color: kSubTextColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
