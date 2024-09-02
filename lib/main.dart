import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twittercloneapp/themes/dark_mode.dart';
import 'package:twittercloneapp/themes/theme_provider.dart';
import 'pages/home_page.dart';

void main() {
  // changed to add provider
  // CLI code to add provider: flutter pub add provider
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // If not using the theme provider, must be: "theme: darkMode,"
      theme: Provider.of<ThemeProvider>(context).themeData,
      );
  }
}