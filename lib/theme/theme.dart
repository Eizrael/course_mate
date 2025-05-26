import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  fontFamily: 'inter_regular',
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF212121),        // main text or UI highlight
    onPrimary: Colors.white,           // text on primary
    secondary: Color(0xFF4D5FFF),      // accent color, buttons, cards
    onSecondary: Colors.white,         // text on secondary// text on background
    surface: Colors.white,             // cards, sheets
    onSurface: Colors.black,           // text on surface
    error: Colors.red,
    onError: Colors.white,
  ),

  scaffoldBackgroundColor: Color(0xFFF9FAFB), // still okay to set explicitly
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 32, fontFamily: 'inter_bold'),
    labelLarge: TextStyle(fontSize: 18, fontFamily: 'inter_medium', color: Colors.white),
    labelMedium: TextStyle(fontSize: 15, fontFamily: 'inter_medium'),
  ),
);
ThemeData dartMode = ThemeData (
  fontFamily: 'inter_regular',
);