import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

class EditInputField extends StatefulWidget {
  const EditInputField(
      {Key? key,
      required this.title,
      required this.initialValue,
      this.onChange,
      required this.keyboardType})
      : super(key: key);
  final String title;
  final String initialValue;
  final void Function(String)? onChange;
  final TextInputType keyboardType;

  @override
  State<EditInputField> createState() => _EditInputFieldState();
}

class _EditInputFieldState extends State<EditInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: kEditHintTextStyle,
          ),
          TextFormField(
            onChanged: widget.onChange,
            initialValue: widget.initialValue,
            style: kEditFieldTextStyle,
            keyboardType: widget.keyboardType,
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryThemeColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
