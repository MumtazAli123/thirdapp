import 'package:flutter/material.dart';
import 'package:thirdapp/UIFiles/animation.dart';
import 'package:thirdapp/sidebar.dart';

import 'Wallet//bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomBar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const Widget005(),
      drawer: const SideBar(),
      appBar: AppBar(
        title: const Text("My Home"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_outlined),
            onSelected: (value) {
              setState(() {});
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text(
                  "Personal Login",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text(
                  "Business Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(21),
              width: 100,
              height: 100,
              child: Image.asset("./assets/images/Sir.jpeg"),
            ),
          ],
        ),
      ),
    );
  }
}
