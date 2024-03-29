import 'package:flutter/material.dart';
import 'package:social/profile_module/edit_profile_screen.dart';

import '../../constants.dart';

class EditProfileButton extends StatefulWidget {
  const EditProfileButton({Key? key}) : super(key: key);

  @override
  State<EditProfileButton> createState() => _EditProfileButtonState();
}

class _EditProfileButtonState extends State<EditProfileButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditProfileScreen()));
      },
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: kPrimaryThemeColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        width: 101.0,
        height: 25.0,
        child: const Center(
            child: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
