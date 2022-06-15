import 'package:flutter/material.dart';
import 'package:social/auth_module/signin_module/components/signin_submit_button.dart';
import 'package:social/constants.dart';
import 'package:social/widgets/custom_input_field.dart';

class SignInCard extends StatefulWidget {
  const SignInCard({Key? key}) : super(key: key);

  @override
  State<SignInCard> createState() => _SignInCardState();
}

class _SignInCardState extends State<SignInCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kSigninCardBackgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.05),

          /// Welcome back heading
          const Text(
            'Welcome Back',
            style: kWelcomeBackHeadingTextStyle,
          ),

          /// Login to your account heading
          const Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              'Login to your account',
              style: kLoginToYourAccountHeadingTextStyle,
            ),
          ),
          SizedBox(height: height * 0.05),

          /// Email or Phone Number input field

          CustomInputField(
            hintText: 'Email or Phone Number',
            obscureText: false,
            onChange: (emailInput) {
              // TODO: Form Validation and Data Processing for e-mail or phone number
            },
          ),

          /// Password input field
          CustomInputField(
            hintText: 'Password',
            obscureText: true,
            onChange: (passwordInput) {
              // TODO: Form Validation and Data Processing for password
            },
          ),
          SizedBox(height: height * 0.035),

          /// Sign-In Submit Button
          SignInSubmitButton(
            onPress: () {
              Navigator.popUntil(context, ModalRoute.withName('/home'));
              Navigator.pushNamed(context, '/home');
            },
          ),
          SizedBox(height: height * 0.05),

          /// Forgot Password
          GestureDetector(
            onTap: () {
              // TODO: Redirect to forgot password screen
            },
            child: const Text(
              'Forgot your Password?',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          SizedBox(height: height * 0.05),
        ],
      ),
    );
  }
}
