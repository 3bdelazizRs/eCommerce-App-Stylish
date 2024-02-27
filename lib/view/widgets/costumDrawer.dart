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
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Add functionality for Item 1
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Add functionality for Item 2
            },
          ),
        ],
      ),
    );
  }
}
