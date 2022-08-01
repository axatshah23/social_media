import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

class LikeDislikeButton extends StatefulWidget {
  const LikeDislikeButton(
      {Key? key,
      required this.like,
      required this.controller,
      required this.color,
      required this.icon})
      : super(key: key);
  final bool like;
  final SwipableStackController controller;
  final Color color;
  final IconData icon;

  @override
  State<LikeDislikeButton> createState() => _LikeDislikeButtonState();
}

class _LikeDislikeButtonState extends State<LikeDislikeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: () {
          if (widget.like) {
            widget.controller.next(swipeDirection: SwipeDirection.right);
          } else {
            widget.controller.next(swipeDirection: SwipeDirection.left);
          }
        },
        child: CircleAvatar(
          radius: 30.0,
          backgroundColor: widget.color,
          child: Center(
            child: Icon(
              widget.icon,
              color: Colors.white,
              size: 36.0,
            ),
          ),
        ),
      ),
    );
  }
}
