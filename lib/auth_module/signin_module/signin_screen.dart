import 'package:flutter/material.dart';
import 'package:social/auth_module/signin_module/components/signin_card.dart';
import 'package:social/constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                image: AssetImage('assets/images/signin_screen_background.jpg'),
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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.32,
                  width: double.infinity,
                ),

                /// Sign-in Card
                const SignInCard(),
                SizedBox(
                  height: height * 0.03,
                ),

                /// Already have a account?
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/signUp');
                  },
                  child: const Text(
                    'Don\'t have an account? Sign Up',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: kPrimaryThemeColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
