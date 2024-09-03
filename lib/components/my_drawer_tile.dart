import 'package:flutter/material.dart';

/*

DRAWER TILE (TELHA) FOR EACH ITEM IN THE MENU

*/

// shortcut to create a widget: "stl"

class MyDrawerTile extends StatelessWidget {
  // working with objects in the class Icon below
  final String title;
  final IconData icon;
  final void Function() onTap;

  const MyDrawerTile({
      super.key,
      required this.title,
      required this.icon,
      required this.onTap,
      });

  // BUILD UI
  @override
  Widget build(BuildContext context) {
    // LIST TILE
    return ListTile(
      title: Text(
        "Home",
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      // leading --> make the icon display before the title
      leading: Icon(
        Icons.home,
        color: Theme.of(context).colorScheme.primary,
      ),
      onTap: () {},
    );
  }
}
