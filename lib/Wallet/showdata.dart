import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class PostsList extends StatefulWidget {
  const PostsList({super.key, required this.title});
  final String title;

  @override
  State<PostsList> createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  Future getData() async {
    var url = "https://babarfurniture.com/mumtaz/reg.php";
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Post"),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print("error found");
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    List list = snapshot.data;
                    return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(list[index]["imgurl"]),
                        ),
                        title: Text(list[index]['name']),
                        subtitle: Text(list[index]['phone']),
                        trailing: const Text('Follow'),
                        onTap: () {
                          if (kDebugMode) {
                            print(list[index]['name']);
                          }
                        });
                  },
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  selectItem(list) {}
}
