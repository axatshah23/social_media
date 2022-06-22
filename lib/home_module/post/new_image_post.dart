import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../../lists.dart';
import 'components/commented_by_screen.dart';
import 'components/heart_animation.dart';
import 'components/liked_by_avatar_circles.dart';
import 'components/liked_by_screen.dart';
import 'components/top_info_bar.dart';

class NewImagePost extends StatefulWidget {
  NewImagePost(
      {Key? key,
      required this.profilePicture,
      required this.name,
      required this.location,
      required this.time,
      required this.caption,
      required this.imageLink,
      required this.likeCounter,
      required this.commentCounter})
      : super(key: key);
  final String profilePicture;
  final String name;
  final String location;
  final String time;
  final String caption;
  final String imageLink;
  int likeCounter;
  int commentCounter;

  @override
  State<NewImagePost> createState() => _NewImagePostState();
}

class _NewImagePostState extends State<NewImagePost> {
  bool isLiked = false;
  bool isHeartAnimating = false;
  Icon likeIcon = const Icon(
    Icons.favorite_border,
    size: 26.0,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: kPostElevation,
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Row containing profile image, name, location, settings
          TopInfoBar(
            profilePicture: widget.profilePicture,
            name: widget.name,
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

          /// Post-Image
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
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                /// Image
                AspectRatio(
                  aspectRatio: 1,
                  child: Image(
                    image: NetworkImage(widget.imageLink),
                    fit: BoxFit.cover,
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
                            comments: widget.commentCounter,
                            image: widget.imageLink,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LikedByScreen(
                        likes: widget.likeCounter,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 30.0,
                  width: 65.0,
                  color: Colors.transparent,
                  child: LikedByAvatarCircles(
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
