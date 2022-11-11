import 'package:flutter/material.dart';
import 'package:thirdapp/UIFiles/grid_view.dart';

import 'main.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Ali"),
            accountEmail: const Text("ali@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("./assets/images/Sir.jpeg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wallet),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            title: const Text("Wallet"),
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DatePickedPage(),
                  ));
            },
            title: const Text("Date"),
          )
        ],
      ),
    );
  }
}
