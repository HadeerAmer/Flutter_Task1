import 'package:flutter/material.dart';
import 'package:flutter_1st_project/first_page.dart';

void main() {
  runApp(DodzApp());
}

class DodzApp extends StatelessWidget {
  const DodzApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}