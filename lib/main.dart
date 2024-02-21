import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice/auth/login_or_register.dart';
import 'package:roll_dice/firebase_options.dart';
import 'package:roll_dice/themes/light_dark_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
