import 'package:flutter/material.dart';
import 'package:twittercloneapp/themes/dark_mode.dart';
import 'package:twittercloneapp/themes/light_mode.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: darkMode,
      );
  }
}