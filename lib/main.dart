import 'package:flutter/material.dart';

import 'views/home_page.dart';

void main() {
  runApp(const Cyberwise());
}

class Cyberwise extends StatelessWidget {
  const Cyberwise({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Product Sans",
      ),
      home: const HomePage(), //first page
    );
  }
}
