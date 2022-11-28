import 'package:flutter/material.dart';
import 'package:thirdapp/screens/bottom_bar.dart';
import 'package:thirdapp/screens/login.dart';
import 'package:thirdapp/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomBarScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Future getData() async {
  //   var url = "https://babarfurniture.com/mumtaz/reg.php";
  //   var response = await http.get(Uri.parse(url));
  //   return json.decode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildBody(),
    );
  }
}

_buildBody() {
  return const LoginPage();
}
