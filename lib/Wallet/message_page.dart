import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "Bhaa Imran",
      "Sir Haroon",
      "Ali",
      "Sir Noman",
      "Jani",
      "Sindhi",
      "Pthan",
      "Asif",
      "Zubair"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("./assets/images/sindhi.jpeg"),
            ),
            title: Text(arrNames[index]),
            subtitle: const Text("03004355604"),
            trailing: const Icon(Icons.phone),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 20,
            thickness: 1,
          );
        },
      ),
    );
  }
}
