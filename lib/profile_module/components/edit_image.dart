import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditImage extends StatefulWidget {
  const EditImage({Key? key}) : super(key: key);

  @override
  State<EditImage> createState() => _EditImageState();
}

class _EditImageState extends State<EditImage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.375,
      width: width,
      color: Colors.transparent,
      child: Center(
        child: GestureDetector(
          onTap: () {
            //TODO: Edit image functionality
          },
          child: Container(
            height: height * 0.25,
            width: height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: const DecorationImage(
                fit: BoxFit.cover,
                // TODO: Have actual profile picture here
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ12dDMIEyNQ4NnppnZkk4PKWDe9vH6uuT44Q&usqp=CAU',
                ),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0x34BFF2D55),
                  ),
                ),
                Center(
                  child: Icon(
                    FontAwesomeIcons.camera,
                    color: Colors.white,
                    size: height * 0.075,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
