import 'package:flutter/material.dart';

import '../../../constants.dart';

class AccountAddedDialog extends StatefulWidget {
  const AccountAddedDialog({Key? key}) : super(key: key);

  @override
  State<AccountAddedDialog> createState() => _AccountAddedDialogState();
}

class _AccountAddedDialogState extends State<AccountAddedDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 473,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            const Image(
              image: AssetImage('images/animation_500_l4723r7c.gif'),
              fit: BoxFit.scaleDown,
            ),
            const Text(
              'Success',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Congratulations! Your account has successfully been created.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/home'));
                Navigator.pushNamed(context, '/askNotificationsPermission');
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                  ),
                  color: kPrimaryThemeColor,
                ),
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: const Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
