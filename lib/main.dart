import 'package:flutter/material.dart';
import 'package:roll_dice/auth/login_or_register.dart';
import 'package:roll_dice/pages/login_page.dart';
import 'package:roll_dice/pages/register_page.dart';
import 'package:roll_dice/themes/light_dark_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
    );
  }
}
