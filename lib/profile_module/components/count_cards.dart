import 'package:flutter/material.dart';

import '../../constants.dart';

class CountCard extends StatefulWidget {
  const CountCard({Key? key, required this.label, required this.count})
      : super(key: key);
  final String label;
  final int count;

  @override
  State<CountCard> createState() => _CountCardState();
}

class _CountCardState extends State<CountCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.count.toString(),
            style: kCountTextStyle,
          ),
          const SizedBox(height: 4.0),
          Text(
            widget.label,
            style: kCountLabelTextStyle,
          )
        ],
      ),
    );
  }
}
