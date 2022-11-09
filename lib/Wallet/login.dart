import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      decoration: InputDecoration(
                        label: const Text("Enter Name"),
                        hintText: "Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text("Enter Password"),
                        hintText: "Password",
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
                      onPressed: () {},
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
