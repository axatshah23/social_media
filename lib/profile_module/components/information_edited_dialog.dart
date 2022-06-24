import 'package:flutter/material.dart';

import '../../../constants.dart';

class InformationEditedDialog extends StatefulWidget {
  const InformationEditedDialog({Key? key}) : super(key: key);

  @override
  State<InformationEditedDialog> createState() =>
      _InformationEditedDialogState();
}

class _InformationEditedDialogState extends State<InformationEditedDialog> {
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
              image: AssetImage('assets/gifs/success.gif'),
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
              'Your information has been successfully saved',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
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
                    'Back to Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
