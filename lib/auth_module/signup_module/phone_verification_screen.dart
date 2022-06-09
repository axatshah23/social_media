import 'package:flutter/material.dart';
import 'package:social/auth_module/signup_module/components/otp_field.dart';
import 'package:social/constants.dart';
import 'package:social/widgets/custom_bottom_sticky_button.dart';

import 'components/account_added_dialog.dart';
import 'components/custom_back_button.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
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

              /// Phone Verification text
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Phone Verification',
                  softWrap: true,
                  style: TextStyle(fontSize: 38.0, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: height * 0.025),

              /// Message
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'We have sent you a SMS with a code to \nnumber +91 9428039723',
                  softWrap: true,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(height: height * 0.1),

              /// Enter OTP
              Center(child: OTPField()),
              SizedBox(height: height * 0.1),

              /// Resend Code
              const Center(
                child: Text(
                  'Did\'nt receieve any code?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // TODO: Resend a new code
                  },
                  child: const Text(
                    'Resend a new code',
                    style: TextStyle(
                      color: kPrimaryThemeColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      /// Bottom Button
      bottomNavigationBar: BottomAppBar(
        child: CustomBottomStickyButton(
          onPress: () {
            // TODO: Verification of the entered OTP
            showDialog(
                context: context,
                builder: (context) => const AccountAddedDialog());
          },
          label: 'Verify',
        ),
      ),
    );
  }
}
