import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twittercloneapp/themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      
      appBar: AppBar(
        title: Text("SETTINGS"),
        // setting the color of the text and appbar primary 
        foregroundColor: Theme.of(context).colorScheme.primary,      
      ),

      body: Column(
        children: [
          ListTile(
            title: Text("Dark Mode"),
            trailing:  CupertinoSwitch(
              // using cupertinoswitch to change the theme calling toggleTheme
              onChanged: (value) => 
                Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme(),
              // using cupertinoswitch to change the variable isDarkMode
              value: 
                Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
            ),
          ),
        ],
      ),
    );
  }
}