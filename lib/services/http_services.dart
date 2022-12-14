import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:thirdapp/api_constants/api_constants.dart';
import 'package:thirdapp/widgets/custom_snackbar,dart.dart';

class AuthenticationService with ChangeNotifier {
  String _authToken = "";

  AuthenticationService._internal();
  factory AuthenticationService() {
    return _instance;
  }
  static final AuthenticationService _instance =
      AuthenticationService._internal();

  Map<String, String> _getRequestHeaders() {
    return {
      "Accept": "application/json",
      'Authorization': 'Bearer $_authToken'
    };
  }

  // Http Get request
  Future<http.Response> _get(String endPoint, Map<String, String> header) {
    String url = ApiConstants002.API_BASE_URL + endPoint;
    // print("_get: $url");
    Uri uri = Uri.parse(url);
    return http.get(uri, headers: header);
  }

  // Http Post request
  Future<http.Response> _post(
      String endPoint, Map<String, String> header, Map<String, dynamic> body) {
    String url = APIConstants.API_BASE_URL + endPoint;
    // print("_post: $url");
    Uri uri = Uri.parse(url);
    return http.post(uri, headers: header, body: body);
  }

  // Convert To JSON
  // ignore: unused_element
  Map<String, dynamic> _convertJsonToMap(String response) {
    return json.decode(response);
  }

  // getter for token
  Future<String?> getToken() async {
    return _authToken;
  }

// Post Login Credential to API
  Future register(
    name,
    email,
    phone,
    password,
    BuildContext context,
  ) async {
    http.Response response = await _post(
        "/register?name=$name&email=$email&phone=$phone&password=$password",
        _getRequestHeaders(), {});
    // Response code
    if (response.statusCode == 200) {
      var jsonList = json.decode(response.body);
      print(jsonList);
    } else {
      CustomSnackBar.buildSuccessSnackbar(context, " Faild");
    }
  }
}
