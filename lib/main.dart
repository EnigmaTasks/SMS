import 'package:flutter/material.dart';
import 'package:sms/Pages/home.dart';
import 'package:sms/Pages/login.dart';

int navId = 0;

void main(List<String> args) {
  runApp(const MaterialAppBase());
}

class MaterialAppBase extends StatefulWidget {
  const MaterialAppBase({super.key});

  @override
  State<MaterialAppBase> createState() => _MaterialAppBaseState();
}

class _MaterialAppBaseState extends State<MaterialAppBase> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //Themes
      // home: HomePage(),
      home: LoginPage(),
      // home: ProfilePage(),
    );
  }
}
