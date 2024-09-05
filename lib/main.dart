import 'package:flutter/material.dart';
import 'package:gunung2/pages/my_home_page.dart';
import 'package:gunung2/pages/my_welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indonesia Highrst Mountain',
      theme: ThemeData(
        fontFamily: 'Gothic_A1'
      ),
      home: MyWelcomePage(),
      routes: {
        '/welcomePage': (context) => MyWelcomePage(),
        '/homePage': (context) => MyHomePage(),
      },
    );
  }
}
