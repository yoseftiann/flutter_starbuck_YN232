import 'package:flutter/material.dart';
import 'package:qualif_yn232/pages/detail_page.dart';
import 'package:qualif_yn232/pages/login_page.dart';
import 'package:qualif_yn232/pages/main_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: "Kanit"
      ),
      home: const LoginPage(),
    );
  }
}