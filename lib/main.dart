import 'package:flutter/material.dart';
import 'package:lux_interio_app_new/onboarding_screen_one.dart';

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
        useMaterial3: true,
      ),
      home: const Screen1(),
    );
  }
}

