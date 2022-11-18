import 'package:flutter/material.dart';
import 'package:thirdapp/UIFiles/grid_view.dart';
import 'package:thirdapp/Wallet/showdata.dart';

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
            leading: const Icon(Icons.airplane_ticket),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
            title: const Text("Airline Ticket"),
          ),
          ListTile(
            leading: const Icon(Icons.date_range),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DatePickedPage(),
                  ));
            },
            title: const Text("Date"),
          ),
          ListTile(
            leading: const Icon(Icons.api),
            onTap: () async {
              // var response =
              //     await BasClient().get('/users').catchError((err) {});
              // if (response == null) return;
              // debugPrint("Successfull");

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PostsList(
                      title: 'Name',
                    ),
                  ));
            },
            title: const Text("Api Data"),
          )
        ],
      ),
    );
  }
}
