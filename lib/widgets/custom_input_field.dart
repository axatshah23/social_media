import 'package:flutter/material.dart';
import 'package:social/constants.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {Key? key,
      required this.hintText,
      required this.obscureText,
      this.onChange})
      : super(key: key);
  final String hintText;
  final bool obscureText;
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0),
      child: TextFormField(
        onChanged: onChange,
        style: const TextStyle(color: kFieldEnteredTextColor),
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: kHintTextColor),
          filled: true,
          fillColor: kFieldFillColor,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kFieldFocusBorderColor),
          ),
        ),
      ),
    );
  }
}
