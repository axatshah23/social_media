import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:social/auth_module/signup_module/phone_verification_screen.dart';
import 'package:social/constants.dart';
import 'package:social/widgets/custom_bottom_sticky_button.dart';

import '../../widgets/custom_input_field.dart';
import 'components/custom_back_button.dart';

class ConnectWithPhone extends StatefulWidget {
  const ConnectWithPhone({Key? key}) : super(key: key);

  @override
  State<ConnectWithPhone> createState() => _ConnectWithPhoneState();
}

class _ConnectWithPhoneState extends State<ConnectWithPhone> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.025),

              /// Return Back Arrow
              const CustomBackButton(),
              SizedBox(height: height * 0.04),

              /// Enter details text
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Enter your\nDetails',
                  style: TextStyle(fontSize: 46.0, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: height * 0.075),

              /// Enter name field
              CustomInputField(
                hintText: 'Name',
                obscureText: false,
                onChange: (nameInput) {
                  // TODO: Form Validation and Data Processing for name
                },
              ),

              /// Enter username field
              CustomInputField(
                hintText: 'Username',
                obscureText: false,
                onChange: (usernameInput) {
                  // TODO: Form Validation and Data Processing for username
                },
              ),

              /// Enter password
              CustomInputField(
                hintText: 'Password',
                obscureText: true,
                onChange: (passwordInput) {
                  // TODO: Form Validation and Data Processing for password
                },
              ),

              /// Confirm Password
              CustomInputField(
                hintText: 'Confirm Password',
                obscureText: true,
                onChange: (confirmPasswordInput) {
                  // TODO: Form Validation and Data Processing for confirm password
                },
              ),

              /// Enter Phone Number
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: kHintTextColor),
                    filled: true,
                    fillColor: kFieldFillColor,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kFieldFocusBorderColor),
                    ),
                  ),
                  onChanged: (phoneChanged) {
                    // TODO: Collect the phone number
                  },
                  onCountryChanged: (countryChanged) {
                    // TODO: Collect the country code
                  },
                ),
              ),
              SizedBox(height: height * 0.075),

              /// Login with Social Network
              Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Or login with ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0,
                          ),
                        ),
                        Text(
                          'Social Network',
                          style: TextStyle(
                            color: kPrimaryThemeColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),

      /// Bottom Button
      bottomNavigationBar: BottomAppBar(
        child: CustomBottomStickyButton(
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PhoneVerification(
                    // TODO: Pass the country code and phone number
                    ),
              ),
            );
          },
          label: 'Next',
        ),
      ),
    );
  }
}
