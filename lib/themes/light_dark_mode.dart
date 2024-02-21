import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light(
    background: Color(0xFFFFFFFF), // White
    primary: Color(0xFF007AFF), // Deep Sky Blue
    secondary: Color(0xFFE5E4E4), // Dark Gray
    tertiary: Colors.grey, // Light Gray
    onPrimary:
        Color.fromARGB(255, 61, 61, 61), // // White (matches background color)
  ),
);
