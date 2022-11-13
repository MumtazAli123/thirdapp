import 'package:flutter/material.dart';
import 'package:thirdapp/UIFiles/animation.dart';
import 'package:thirdapp/sidebar.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'dart:core';
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
        primarySwatch: Colors.green,
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
    var time = DateTime.now();
    var arrColors = [
      Colors.red,
      Colors.yellow,
      Colors.pink,
      Colors.orange,
      Colors.purple,
      Colors.lime,
      Colors.tealAccent
    ];

    return Scaffold(
      floatingActionButton: const Widget005(),
      drawer: const SideBar(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My Home",
              style: TextStyle(fontFamily: "FontMain"),
            ),
            Text(
              " ${DateFormat('yMMMMEEEEd').format(time)}",
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ],
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
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: arrColors[index],
          );
        },
        itemCount: arrColors.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150, crossAxisSpacing: 11, mainAxisSpacing: 11),
      ),
    );
  }
}

class Network {
  final String url;
  Network(this.url);
}
