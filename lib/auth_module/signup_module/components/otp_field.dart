import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:social/constants.dart';

class OTPField extends StatefulWidget {
  @override
  _OTPFieldState createState() => _OTPFieldState();

  @override
  String toStringShort() => 'Rounded Filled';
}

class _OTPFieldState extends State<OTPField> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  bool showError = false;

  @override
  Widget build(BuildContext context) {
    const length = kOTPFieldLength;

    /// Default Pin Theme
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: kOTPFieldEnteredTextColor,
      ),
      decoration: BoxDecoration(
        color: kOTPFieldFillColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    /// Focused Pin Theme
    final focusedPinTheme = defaultPinTheme.copyWith(
      height: 68,
      width: 64,
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: kOTPFieldBorderColor),
      ),
    );

    /// Submitted Pin Theme
    final submittedPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: GoogleFonts.poppins(
          fontSize: 22,
          color: kOTPFieldSubmittedTextColor,
          fontWeight: FontWeight.w700),
      decoration: BoxDecoration(
        color: kOTPFieldSubmittedFillColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return SizedBox(
      height: 68,
      child: Pinput(
        length: length,
        controller: controller,
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
      ),
    );
  }
}
