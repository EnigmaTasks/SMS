import 'package:flutter/material.dart';
import 'package:sms/Pages/home.dart';

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
      //Themes
      home: HomePage(),
    );
  }
}
