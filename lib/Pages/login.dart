import 'package:flutter/material.dart';
import 'package:sms/Pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 228, 251),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/logpic.png",
              fit: BoxFit.cover,
              // height: 300,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Student Management",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "System",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Veer Surendra Sai",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "University of Technology",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "(Burla,Odisha)",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                // color: Colors.blue,
                width: 120,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFF001257),
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Made by web and coding club",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  "<ENIGMA>",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/logo.png",
                  height: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
