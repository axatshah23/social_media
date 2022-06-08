import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignInSubmitButton extends StatelessWidget {
  const SignInSubmitButton({Key? key, this.onPress}) : super(key: key);
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0),
        child: Container(
          decoration: BoxDecoration(
              color: kPrimaryThemeColor,
              borderRadius: BorderRadius.circular(8.0)),
          width: double.infinity,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sign In',
                style: kSocialSignUpButtonsLabelStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
