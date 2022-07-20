import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/home_module/post/components/video_player.dart';
import 'package:video_player/video_player.dart';

import '../../constants.dart';
import '../../lists.dart';
import 'components/commented_by_screen.dart';
import 'components/heart_animation.dart';
import 'components/liked_by_screen.dart';
import 'components/top_info_bar.dart';
import 'components/viewed_by_avatar_circles.dart';
import 'components/viewed_by_screen.dart';

class DisplayPost extends StatefulWidget {
  DisplayPost({
    Key? key,
    required this.profilePicture,
    required this.name,
    required this.isLocationShared,
    this.location,
    required this.time,
    required this.caption,
    required this.numberOfContent,
    required this.isImage,
    required this.content,
    required this.likeCounter,
    required this.commentCounter,
  }) : super(key: key);
  final String profilePicture;
  final String name;
  final bool isLocationShared;
  final String? location;
  final String time;
  final String caption;
  int likeCounter;
  int commentCounter;
  final int numberOfContent;
  final List<bool> isImage;
  final List<String> content;

  @override
  State<DisplayPost> createState() => _DisplayPostState();
}

class _DisplayPostState extends State<DisplayPost> {
  int currentIndex = 0;
  bool isLiked = false;
  bool isHeartAnimating = false;
  Icon likeIcon = const Icon(
    Icons.favorite_border,
    size: 26.0,
  );
  double aspectRatio = 0.0;
  late VideoPlayerController controller;

  /// Get aspect ratio
  void getAspectRatio() {
    /// When you share a photo that has a width between 320 and 1080 pixels, we keep that photo at its original resolution as long as the photo's aspect ratio is between 1.91:1 and 4:5 (a height between 566 and 1350 pixels with a width of 1080 pixels). If the aspect ratio of your photo isn't supported, it will be cropped to fit a supported ratio. If you share a photo at a lower resolution, we enlarge it to a width of 320 pixels. If you share a photo at a higher resolution, we size it down to a width of 1080 pixels.
    if (widget.isImage[0]) {
      Image content = Image.network(widget.content[0]);
      content.image.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener(
          (ImageInfo image, bool synchronousCall) {
            var myImage = image.image;
            double contentWidth = myImage.width.toDouble();
            double contentHeight = myImage.height.toDouble();

            /// Calculate aspect ratio
            setState(() {
              aspectRatio = contentWidth / contentHeight;
            });

            /// Check that it fits constraints i.e. is between 1.91:1 and 4:5 if not make necessary changes
            if (aspectRatio < (4 / 5) || aspectRatio > (1.91 / 1)) {
              /// Decrease or increase image width according to need
              if (contentWidth < 320) {
                contentWidth = 320;
                aspectRatio = contentWidth / contentHeight;
              } else if (contentWidth > 1080) {
                contentWidth = 1080;
                aspectRatio = contentWidth / contentHeight;
              }
            }
          },
        ),
      );
    } else {
      aspectRatio = 1;
    }
  }

  @override
  void initState() {
    super.initState();
    getAspectRatio();
  }

  @override
  void dispose() {
    if (!widget.isImage[0]) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      padding: const EdgeInsets.all(16.0),
      decoration: kPostContainerDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Row containing profile image, name, location, settings
          TopInfoBar(
            profilePicture: widget.profilePicture,
            name: widget.name,
            isLocationShared: widget.isLocationShared,
            location: widget.location,
            time: widget.time,
          ),
          const SizedBox(height: 18.0),

          /// Caption
          Text(
            widget.caption,
            style: kPostCaptionTextStyle,
          ),
          const SizedBox(height: 16.0),

          /// Post-Content i.e. Image, Images or Videos
          GestureDetector(
            /// Show Liked animation on double tap and increment counter
            onDoubleTap: () {
              setState(() {
                if (!isLiked) {
                  likeIcon = const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 26.0,
                  );
                  widget.likeCounter++;
                  isLiked = true;
                }
                isHeartAnimating = true;
              });
            },
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: aspectRatio,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      currentIndex = index;
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
                              child: widget.isImage[currentIndex]
                                  ? AspectRatio(
                                      aspectRatio: aspectRatio,
                                      child: Image(
                                        image: NetworkImage(item),
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Center(
                                      child: CustomVideoPlayer(url: item),
                                    ),
                            ),

                            /// Heart Animation
                            Opacity(
                              opacity: isHeartAnimating ? 1 : 0,
                              child: HeartAnimation(
                                onEnd: () {
                                  setState(() {
                                    isHeartAnimating = false;
                                  });
                                },
                                isAnimating: isHeartAnimating,
                                duration: const Duration(milliseconds: 400),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 80.0,
                                ),
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
                                '${(currentIndex + 1).toString()}/${widget.numberOfContent}',
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
          ),
          const SizedBox(height: 16.0),

          /// Likes and Comments and circle avatars
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Row for like and comment buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Like Icon
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLiked = !isLiked;
                        if (isLiked) {
                          /// Like incremented
                          likeIcon = const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 26.0,
                          );
                          widget.likeCounter++;
                        } else {
                          /// Like decremented
                          likeIcon = const Icon(
                            Icons.favorite_border,
                            size: 26.0,
                          );
                          widget.likeCounter--;
                        }
                      });
                    },
                    child: likeIcon,
                  ),
                  const SizedBox(width: 8.0),

                  /// Like Counter
                  GestureDetector(
                    onTap: () {
                      // TODO: Take to liked by screen.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LikedByScreen(
                            likes: widget.likeCounter,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      widget.likeCounter.toString(),
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                  const SizedBox(width: 24.0),

                  /// Comment Icon and Counter
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommentedByScreen(
                            currentIndex: currentIndex,
                            comments: widget.commentCounter,
                            aspectRatio: aspectRatio,
                            numberOfContent: widget.numberOfContent,
                            isImage: widget.isImage,
                            content: widget.content,
                          ),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.comment,
                          size: 24.0,
                        ),
                        const SizedBox(width: 8.0),
                        // TODO: Update with actual number of comments
                        Text(
                          widget.commentCounter.toString(),
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              /// Three overlapping circles (Liked by circles)
              // TODO: Make a way to display three random profile pictures of people who have viewed image
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewedByScreen(
                        likes: widget.likeCounter,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 30.0,
                  width: 65.0,
                  color: Colors.transparent,
                  child: ViewedByAvatarCircles(
                    topImage: imageAddress[6],
                    centerImage: imageAddress[5],
                    bottomImage: imageAddress[9],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
