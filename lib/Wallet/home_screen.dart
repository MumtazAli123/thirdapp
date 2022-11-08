import 'package:flutter/material.dart';
import 'package:thirdapp/Wallet/wallet_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Good Morning",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w800,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("./assets/images/Sir.jpeg"),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.green,
                  ),
                  margin: const EdgeInsets.all(21),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 16),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.search),
                          Text("Search"),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Up Coming",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                        onTap: () {
                          print("Raja");
                        },
                        child: const Text("View all")),
                  ],
                )
              ],
            ),
          ),
          WalletView(),
        ],
      ),
    );
  }
}
