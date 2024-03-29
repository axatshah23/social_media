import 'package:flutter/material.dart';
import 'package:social/constants.dart';

import 'components/signup_buttons.dart';
import 'components/slider_dots.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          /// Background image of Signup Screen
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signup_screen_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// Blur added over the image
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: kGradientColorList,
              ),
            ),
          ),

          /// Rest of the widgets Stacked onto it
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.10),

                // TODO: Logo
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.facebook,
                    color: kPrimaryThemeColor,
                  ),
                ),
                SizedBox(height: height * 0.3),

                /// Greeting Text
                const Text(
                  'Share your greatest moments',
                  style: kGreetingTextStyle,
                  textScaleFactor: 2.5,
                  textAlign: TextAlign.center,
                ),

                /// Slider Dots
                const SliderDots(),

                /// Connect with Facebook
                SocialSignUpButtons(
                  icon: Icons.facebook,
                  label: 'Connect with Facebook',
                  backgroundColor: Colors.blueAccent,
                  iconColor: Colors.white,
                  onPress: () {
                    //TODO: Add Connect with Facebook Functionality
                  },
                ),

                /// Connect with Phone
                SocialSignUpButtons(
                  icon: Icons.phone,
                  label: 'Connect with Phone',
                  backgroundColor: kPrimaryThemeColor,
                  iconColor: Colors.white,
                  onPress: () {
                    Navigator.pushNamed(context, '/connectWithPhone');
                  },
                ),
                SizedBox(height: height * 0.05),

                /// Already have a account?
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/signIn');
                  },
                  child: const Text(
                    'Already have an account? Sign In',
                    style: kAlreadyHaveAccountTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
