import 'package:flutter/material.dart';
import 'package:social/constants.dart';

import 'count_cards.dart';
import 'edit_profile_button.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 256.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //TODO: Pass actual content
            /// Container for profile-picture, name, username, and edit profile button.
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// Profile Picture
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: kPrimaryThemeColor,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        // TODO: Have actual profile picture here
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ12dDMIEyNQ4NnppnZkk4PKWDe9vH6uuT44Q&usqp=CAU',
                        ),
                      ),
                    ),
                    height: 115.0,
                    width: 115.0,
                  ),
                  const SizedBox(width: 24.0),

                  /// Rest of stuff
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Name and username
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            /// Name
                            Text(
                              'Nicholas Joseph Fury',
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kProfileNameTextStyle,
                            ),

                            /// Username
                            Text(
                              '@directorofsheild',
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kProfileUserNameTextStyle,
                            ),
                          ],
                        ),

                        /// Edit profile button
                        const EditProfileButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Container for counts
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // TODO: Pass actual values here
                  CountCard(label: 'Following', count: 751),
                  CountCard(label: 'Follower', count: 659),
                  CountCard(label: 'Likes', count: 1507),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
