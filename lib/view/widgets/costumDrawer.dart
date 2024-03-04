import 'package:flutter/material.dart';

class CostumDrawer extends StatelessWidget {
  const CostumDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [CircleAvatar(
                
              ), Text('Abdelaziz Rass')],
            ),
          ),
          ListTile(
            title: const Text('About us'),
            leading: const Icon(
              Icons.info,
            ),
            onTap: () {
              // Add functionality for Item 2
            },
          ),
          ListTile(
            title: const Text('Log out'),
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            onTap: () {
              // Add functionality for Item 1
            },
          ),
        ],
      ),
    );
  }
}
