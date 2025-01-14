import 'package:flutter/material.dart';
import 'package:twittercloneapp/components/my_drawer_tile.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Icon(
                Icons.person,
                size: 72,
                color: Theme.of(context).colorScheme.primary
                ),
            ),

            Divider(
              indent:25,
              endIndent: 25,
              color: Theme.of(context).colorScheme.secondary,
              ),
            
            MyDrawerTile(
              title: "HOME",
              icon: Icons.home,
              onTap: () {
                // closing the navigator
                Navigator.pop(context);
              },
            ),

            MyDrawerTile(
              title: "SETTINGS",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
            ),

          ],
          ),
      ),
    );
  }
}