import 'package:flutter/material.dart';

import '../../../constants.dart';

class SliderDots extends StatelessWidget {
  const SliderDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          '·',
          textScaleFactor: 7.0,
          style: TextStyle(color: kPrimaryThemeColor),
        ),
        Text(
          '···',
          textScaleFactor: 7.0,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
