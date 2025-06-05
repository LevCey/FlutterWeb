import 'package:flutter/material.dart';
import 'links_landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Levent Ceyhan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LinksLandingPage(),
    );
  }
}
