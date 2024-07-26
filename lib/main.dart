import 'package:flutter/material.dart';
import 'package:lux_interio_app_new/onboarding_screen_four.dart';
import 'package:lux_interio_app_new/onboarding_screen_one.dart';
import 'package:lux_interio_app_new/onboarding_screen_three.dart';
import 'package:lux_interio_app_new/onboarding_screen_two.dart';

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
      ),
      home: const Screen1(),
      routes: {
        '/onboarding1':(context) => const Screen1(),
        '/onboarding2':(context) => const Screen2(),
        '/onboarding3':(context) => const Screen3(),
        '/onboarding4':(context) => const Screen4(),
      },
      
      
    );
  }
}

