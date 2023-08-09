import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sms/component/block.dart';
import 'package:sms/component/block2.dart';

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
      appBar: AppBar(
        backgroundColor: Color(0xFF001257),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(25),
        //     bottomRight: Radius.circular(25),
        //   ),
        // ),
      ),
      //Heading
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search,hello,tname
            Container(
              padding: const EdgeInsets.only(left: 40),
              color: const Color(0xFF001257),
              height: 200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello',
                        style: GoogleFonts.poppins(
                            fontSize: 38,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Teacher's Name",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFDFE1F9)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 320.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(15.0),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //Heading
            Container(
              padding: EdgeInsets.only(left: 30),
              color: Colors.white,
              height: 55,
              alignment: Alignment.centerLeft,
              child: Text(
                'Branches',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF001257),
                    fontSize: 30),
              ),
            ),
            //Body
            Block(s1: "ChE", s2: "Chemical Engineering"),
            Block2(s3: "2020 - 2024"),
          ],
        ),
      ),
    );
  }
}
