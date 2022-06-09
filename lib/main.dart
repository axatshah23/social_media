import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social/auth_module/signup_module/connect_with_phone_screen.dart';
import 'package:social/permissions_module/notifications_permission.dart';

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
        '/home': (context) => const SignIn(),
        '/signIn': (context) => const SignIn(),
        '/signUp': (context) => const SignUp(),
        '/connectWithPhone': (context) => const ConnectWithPhone(),
        '/askNotificationsPermission': (context) =>
            const AskNotificationsPermission(),
      },
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const SignIn(),
    );
  }
}
