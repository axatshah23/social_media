import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/constants.dart';
import 'package:social/home_module/post/components/video_player.dart';
import 'package:social/lists.dart';
import 'package:social/widgets/custom_back_button.dart';

class CommentedByScreen extends StatefulWidget {
  CommentedByScreen({
    Key? key,
    required this.currentIndex,
    required this.comments,
    required this.aspectRatio,
    required this.numberOfContent,
    required this.isImage,
    required this.content,
  }) : super(key: key);
  int currentIndex;
  final int comments;
  final int numberOfContent;
  final List<bool> isImage;
  final List<String> content;
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
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: widget.aspectRatio,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      widget.currentIndex = index;
                    },
                  );
                },
              ),
              items: widget.content
                  .map(
                    (item) => Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        /// Stack containing content and like animation
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            /// Content
                            Container(
                              child: widget.isImage[widget.currentIndex]
                                  ? AspectRatio(
                                      aspectRatio: widget.aspectRatio,
                                      child: Image(
                                        image: NetworkImage(item),
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Center(
                                      child: CustomVideoPlayer(url: item),
                                    ),
                            ),
                          ],
                        ),

                        /// content number indicator
                        Visibility(
                          visible: widget.numberOfContent > 1,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 25.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              color: kLightBlackBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Center(
                              child: Text(
                                '${(widget.currentIndex + 1).toString()}/${widget.numberOfContent}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                  .toList(),
            ),

            /// Comments
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
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
                                child: const Text(
                                  'Steve Rogers',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: kCommentTitleTextStyle,
                                ),
                              ),

                              /// Location(Optional) and time
                              SizedBox(
                                width: width * 0.6,
                                child: const Text(
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
                  const SizedBox(height: 12.0),

                  /// Comment content
                  Text(
                    lastMessage[14],
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 12.0),

                  /// Reply Button
                  const Text(
                    'Reply',
                    style: TextStyle(fontSize: 15.0, color: kSubTextColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
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
                                child: const Text(
                                  'Steve Rogers',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: kCommentTitleTextStyle,
                                ),
                              ),

                              /// Location(Optional) and time
                              SizedBox(
                                width: width * 0.6,
                                child: const Text(
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
                  const SizedBox(height: 12.0),

                  /// Comment content
                  Text(
                    lastMessage[14],
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 12.0),

                  /// Reply Button
                  const Text(
                    'Reply',
                    style: TextStyle(fontSize: 15.0, color: kSubTextColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
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
                                child: const Text(
                                  'Steve Rogers',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: kCommentTitleTextStyle,
                                ),
                              ),

                              /// Location(Optional) and time
                              SizedBox(
                                width: width * 0.6,
                                child: const Text(
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
                  const SizedBox(height: 12.0),

                  /// Comment content
                  Text(
                    lastMessage[14],
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 12.0),

                  /// Reply Button
                  const Text(
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
