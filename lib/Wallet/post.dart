import 'dart:convert';
import 'package:http/http.dart' as http;

class HTTPHelper {
  Future<List<Map>> fetchItems() async {
    List<Map> items = [];

    // Get the item from the api
    http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      String jsonString = response.body;
      //  convert to list
      List data = jsonDecode(jsonString);
      items = data.cast<Map>();
    }

    return items;
  }

  Future<Map> getItem(itemId) async {
    Map item = {};
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$itemId'));

    if (response.statusCode == 200) {
      String jsonString = response.body;
      //  convert to list
      item = jsonDecode(jsonString);
    }

    return item;
  }

// Add item
  Future<bool> addItem(Map data) async {
    bool status = false;

    // Add the item from data base, call from api

    return status;
  }

//update item1234
  Future<bool> updateItem(Map data, String itemId) async {
    bool status = false;

    // Update the item, call from api

    return status;
  }

//Delete Item

  Future<bool> deleteItem(String itemId) async {
    bool status = false;

    // Deleted item from database

    return status;
  }
}
