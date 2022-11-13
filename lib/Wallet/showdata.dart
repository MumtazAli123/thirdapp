import 'package:flutter/material.dart';
import 'package:thirdapp/Wallet/post.dart';

class PostsList extends StatefulWidget {
  PostsList({super.key});

  Future<List<Map>> _futureItems = HTTPHelper().fetchItems();

  @override
  State<PostsList> createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Post"),
      ),
      body: FutureBuilder<List<Map>>(
        // future: _futureItems(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //  check for error
          if (snapshot.hasError) {
            return Text("Some Error ${snapshot.error}");
          }

          //has data arrived
          if (snapshot.hasData) {
            List<Map> posts = snapshot.data;
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  Map thisItem = posts[index];
                  return ListTile(
                    title: Text('${thisItem['title']}'),
                    subtitle: Text('${thisItem['body']}'),
                  );
                });
          }

          //
          // display loader
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
