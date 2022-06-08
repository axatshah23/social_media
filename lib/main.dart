import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth_module/signin_module/signin_screen.dart';
import 'auth_module/signup_module/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/signIn': (context) => const SignIn(),
        '/signUp': (context) => const SignUp(),
      },
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
      home: const SignUp(),
    );
  }
}
