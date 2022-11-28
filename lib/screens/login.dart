import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:thirdapp/screens/bottom_bar.dart';
import 'package:thirdapp/widgets/input_widget.dart';

String username = '';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  // UserProfileModel? authCustomerUser = UserProfileModel();
  TextEditingController _passwordController = TextEditingController();
  // LoginApiServices _authenticationService = LoginApiServices();

  // ignore: non_constant_identifier_names
  void ClearText() {
    _nameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _passwordController.clear();
  }

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code

    if (_nameController.text.length < 2) {
      return 'Too short';
    }
    // return null if the text is valid
    else {
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  Future<List> Senddata() async {
    var response = await http.post(
        Uri.parse("https://babarfurniture.com/mumtaz/insertdata.php"),
        body: {
          "name": _nameController.text,
          "email": _emailController.text,
          "phone": _phoneController.text,
          "pass": _passwordController.text,
        });
    // ignore: unrelated_type_equality_checks

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
                      controller: _nameController,
                      decoration: UIConfig().inputDecoration(
                          'Name', "Enter your name", Icons.person, null, () {}),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    TextField(
                      controller: _emailController,
                      decoration: UIConfig().inputDecoration('Email',
                          'Enter Your Email', Icons.email, null, () {}),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    TextField(
                      controller: _phoneController,
                      decoration: UIConfig().inputDecoration('Phone',
                          'Enter Phone Number', Icons.phone, null, () {}),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: UIConfig().inputDecoration(
                          'Password',
                          "Enter ur Password",
                          Icons.lock,
                          Icons.visibility,
                          () {}),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Senddata();
                        ClearText();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomBarScreen()));
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

  void togglePassword() {
    _obscureText = !_obscureText;
    setState(() {});
  }
}
