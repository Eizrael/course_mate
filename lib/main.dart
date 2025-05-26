import 'package:course_mate/screens/onboarding/onboarding_screen.dart';
import 'package:course_mate/screens/signup_signin/sign_in_page.dart';
import 'package:course_mate/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      routes: {
        '/sign_in_page': (context) => SignInPage(),
      },
    );
  }
}
