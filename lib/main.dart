import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social/auth_module/signup_module/connect_with_phone_screen.dart';
import 'package:social/permissions_module/notifications_permission.dart';
import 'package:social/widgets/custom_bottom_navbar.dart';

import 'auth_module/signin_module/signin_screen.dart';
import 'auth_module/signup_module/signup_screen.dart';
import 'find_friends_module/find_friends_screen.dart';

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
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      routes: {
        '/home': (context) => const CustomBottomNavBar(),
        '/signIn': (context) => const SignIn(),
        '/signUp': (context) => const SignUp(),
        '/connectWithPhone': (context) => const ConnectWithPhone(),
        '/askNotificationsPermission': (context) =>
            const AskNotificationsPermission(),
        '/findFriends': (context) => const FindFriendsScreen(),
      },
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0.0,
          )),
      home: const SignIn(),
    );
  }
}
