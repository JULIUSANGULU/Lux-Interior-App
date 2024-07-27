import 'package:flutter/material.dart';
import 'package:lux_interio_app_new/forgotpassword.dart';
import 'package:lux_interio_app_new/login_successful.dart';
import 'package:lux_interio_app_new/new_password.dart';
import 'package:lux_interio_app_new/onboarding_screen_four.dart';
import 'package:lux_interio_app_new/onboarding_screen_one.dart';
import 'package:lux_interio_app_new/onboarding_screen_three.dart';
import 'package:lux_interio_app_new/onboarding_screen_two.dart';
import 'package:lux_interio_app_new/signin.dart';
import 'package:lux_interio_app_new/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E5F6E),
        ),
      ),
      home: const Screen1(),
      // All routes are defined here//
      routes: {
        '/onboarding1': (context) => const Screen1(),
        '/onboarding2': (context) => const Screen2(),
        '/onboarding3': (context) => const Screen3(),
        '/onboarding4': (context) => const Screen4(),
        '/signup': (context) => const Signup(),
        '/signin': (context) => const Signin(),
        '/forgotpassword': (context) => const Forgotpassword(),
        '/loginsuccessful': (context) => const LoginSuccessful(),
        '/newpassword': (context) => const NewPassword(),
      },
      //End of routes definition//
    );
  }
}
