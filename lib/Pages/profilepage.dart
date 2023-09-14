import 'package:flutter/material.dart';

import '../component/detail.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001257),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.center,
              child: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/logpic.png"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Color(0xFF001257),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/logpic.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "Sagarspt01",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "2202041056",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //Padding(padding: EdgeInsets.all(20)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "General Details",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF001257),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15.0,
                          offset: const Offset(6, 6),
                          spreadRadius: 1,
                          color: Colors.blueGrey.shade500,
                        ),
                        const BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(-6, -6),
                            spreadRadius: 1,
                            color: Colors.white)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Details(first: "Branch", last: "CSE"),
                        Details(first: "Reg.no", last: "2202041056"),
                        Details(first: "Contact no", last: "98345600"),
                        Details(first: "E-mail", last: "sagar123@gmail.com"),
                        Details(first: "Address", last: "rayagada")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Grade Details",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF001257),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15.0,
                          offset: const Offset(6, 6),
                          spreadRadius: 1,
                          color: Colors.blueGrey.shade500,
                        ),
                        const BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(-6, -6),
                            spreadRadius: 1,
                            color: Colors.white)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Details(first: "Semester", last: "3rd"),
                        Details(first: "CGPA", last: "8.9"),
                        Details(first: "Current SGPA", last: "9.0"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
