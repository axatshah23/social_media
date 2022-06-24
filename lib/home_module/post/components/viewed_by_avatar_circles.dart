import 'package:flutter/material.dart';

class ViewedByAvatarCircles extends StatefulWidget {
  const ViewedByAvatarCircles(
      {Key? key,
      required this.topImage,
      required this.centerImage,
      required this.bottomImage})
      : super(key: key);
  final String topImage;
  final String centerImage;
  final String bottomImage;

  @override
  State<ViewedByAvatarCircles> createState() => _ViewedByAvatarCirclesState();
}

class _ViewedByAvatarCirclesState extends State<ViewedByAvatarCircles> {
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
