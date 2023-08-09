import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(),
      //Heading
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search,hello,tname
            Container(
              color: Colors.amber,
              height: 200,
            ),
            //Heading
            Container(
              color: Colors.white,
              height: 40,
            ),
            //Body
            Container(
              color: Colors.greenAccent,
              height: 700,
            )
          ],
        ),
      ),
    );
  }
}
