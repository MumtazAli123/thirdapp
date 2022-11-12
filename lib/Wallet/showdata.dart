import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://babarfurniture.com/mumtaz/reg.php';

class BasClient {
  Future<dynamic> post(String api) async {}

  var Client = http.Client();
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var response = await Client.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //thro exception and catch it i UI
    }
  }

  Future<dynamic> put(String api) async {}

  Future<dynamic> delete(String api) async {}
}

class MyApi extends StatefulWidget {
  const MyApi({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyApiState();
  }
}

class MyApiState extends State<MyApi> {
  get getList => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApi"),
      ),
      body: ListView.builder(
          itemCount: getList == null ? 0 : getList.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Text(
                      getList[index].toString(),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
