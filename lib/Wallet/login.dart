import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

String username = '';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  Future<List> senddata() async {
    var response = await http.post(
        Uri.parse("https://babarfurniture.com/mumtaz/insertdata.php"),
        body: {
          "name": name.text,
          "email": email.text,
          "phone": phone.text,
          "pass": pass.text,
        });
    if (response != "") {
      name.text = "";
    }
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("./assets/images/login.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'PaySaw',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: const Text(
                "Welcome / Back ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(11),
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: name,
                      decoration: InputDecoration(
                        label: const Text(
                          "Enter Name",
                          style: TextStyle(fontSize: 15, height: 1),
                        ),
                        hintText: "Name",
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(41),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        label: const Text(
                          "Enter Email",
                          style: TextStyle(fontSize: 15, height: 2),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.redAccent,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    TextField(
                      controller: phone,
                      decoration: InputDecoration(
                        label: const Text(
                          "03005400300",
                          style: TextStyle(fontSize: 15, height: 1),
                        ),
                        prefixIcon: const Icon(
                          Icons.whatsapp,
                          color: Colors.green,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    TextField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text("Enter Password"),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        senddata();
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
