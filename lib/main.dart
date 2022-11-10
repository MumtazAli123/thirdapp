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
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
        ),
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
        title: const Text(
          "My Home",
          style: TextStyle(fontFamily: "FontMain"),
        ),
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
                    color: Colors.red,
                    fontFamily: "FontMain",
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text(
                  "Business Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "FontMain",
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
            Card(
              shadowColor: Colors.red,
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(7.0),
                margin: const EdgeInsets.all(11),
                width: 100,
                height: 100,
                child: Image.asset("./assets/images/Sir.jpeg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
