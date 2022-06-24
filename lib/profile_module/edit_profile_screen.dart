import 'package:flutter/material.dart';
import 'package:social/constants.dart';
import 'package:social/profile_module/components/edit_image.dart';
import 'package:social/profile_module/components/edit_input_fields.dart';
import 'package:social/profile_module/components/information_edited_dialog.dart';
import 'package:social/widgets/custom_back_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryScaffoldBackgroundGrey,
      appBar: AppBar(
        backgroundColor: kSecondaryAppBarBackgroundGrey,

        /// Back Button
        leading: CustomBackButton(
          onPress: () {
            Navigator.pop(context);
          },
        ),

        /// Title
        centerTitle: true,
        title: const Text(
          'Edit Information',
          style: kAppBarTitleTextStyle,
        ),

        /// Save Button
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  // TODO: Save the edited information
                  showDialog(
                    context: context,
                    builder: (context) => const InformationEditedDialog(),
                  );
                },
                child: const Text(
                  'Save',
                  style: kNextButtonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            //TODO: Pass actual user information here and later save it. Also, validate entered user info

            /// Image container
            EditImage(),

            /// Name
            EditInputField(
              title: 'Name',
              initialValue: 'Nicholas Joseph Fury',
              keyboardType: TextInputType.name,
            ),

            /// Username
            EditInputField(
              title: 'Username',
              initialValue: 'directorofsheild',
              keyboardType: TextInputType.name,
            ),

            /// E-mail
            EditInputField(
              title: 'E-mail',
              initialValue: 'directorofsheild@marvel.com',
              keyboardType: TextInputType.emailAddress,
            ),

            /// Phone
            // TODO: Have phone number field here nd verify newly entered number
            EditInputField(
              title: 'Phone',
              initialValue: '+91 94280 39723',
              keyboardType: TextInputType.phone,
            ),

            /// Gender
            // TODO: Have a bottom popup to select gender
            EditInputField(
              title: 'Gender',
              initialValue: 'Male',
              keyboardType: TextInputType.name,
            ),

            /// DOB
            // TODO: Open calendar
            EditInputField(
              title: 'Date of Birth',
              initialValue: '04/07/1950',
              keyboardType: TextInputType.datetime,
            ),
          ],
        ),
      ),
    );
  }
}
