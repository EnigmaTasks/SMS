import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms/Widgets/branch_tile.dart';
import 'package:sms/Widgets/std_tile.dart';
import 'package:sms/Widgets/year_tile.dart';
import 'package:sms/main.dart';

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
        backgroundColor: const Color(0xFF001257),
        leading: IconButton(
          onPressed: () {
            setState(() {
              if (navId <= 2) {
                navId--;
              }
            });
          },
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
      ),
      //Heading
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                            hintText: 'Hinted Search Text',
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
            navId == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                          child: Center(
                            child: Text("Branches"),
                          ),
                        ),
                      ],
                    ),
                  )
                : navId == 1
                    ? const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              child: Center(
                                child: Text("Year"),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              child: Center(
                                child: Text("Student List"),
                              ),
                            ),
                          ],
                        ),
                      ),
            //Body
            SizedBox(
              // color: Colors.greenAccent,
              height: 700,
              width: 350,
              child: navId == 0
                  ? GridView.builder(
                      // itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                navId++;
                              });
                            },
                            child: BranchTile());
                      }),
                    )
                  : navId == 1
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              navId++;
                            });
                          },
                          child: GridView.builder(
                            itemCount: 4,
                            padding: const EdgeInsets.all(10),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 25,
                                    crossAxisCount: 1,
                                    mainAxisExtent: 70),
                            itemBuilder: ((context, index) {
                              return YearTile();
                            }),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              navId++;
                            });
                          },
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 25,
                                    crossAxisCount: 1,
                                    mainAxisExtent: 90),
                            itemBuilder: ((context, index) {
                              return StdTile();
                            }),
                          ),
                        ),
            )
          ],
        ),
      ),
    );
  }
}
