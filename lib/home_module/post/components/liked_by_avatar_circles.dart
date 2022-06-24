import 'package:flutter/material.dart';

class LikedByAvatarCircles extends StatefulWidget {
  const LikedByAvatarCircles(
      {Key? key,
      required this.topImage,
      required this.centerImage,
      required this.bottomImage})
      : super(key: key);
  final String topImage;
  final String centerImage;
  final String bottomImage;

  @override
  State<LikedByAvatarCircles> createState() => _LikedByAvatarCirclesState();
}

class _LikedByAvatarCirclesState extends State<LikedByAvatarCircles> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 34.0,
          child: Container(
            height: 27.0,
            width: 27.0,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(widget.bottomImage),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          left: 17.0,
          child: Container(
            height: 27.0,
            width: 27.0,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(widget.centerImage),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          left: 0.0,
          child: Container(
            height: 27.0,
            width: 27.0,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(widget.topImage),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
