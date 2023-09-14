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
  //Add arrays here
  List studentList = [
    "Ankush Behera",
    "Sagar Satapathy",
    "Debasish Dey",
    "Swayam Prakash Choudhury",
    "Aryaman Jena",
    "Nikhilesh Sahu",
    "Debakanta Pradhan",
    "Satyajit Pradhan",
    "Amisha Samal"
  ];
  List rollList = [
    "2202041001",
    "2202041002",
    "2202041003",
    "2202041004",
    "2202041005",
    "2202041006",
    "2202041007",
    "2202041008",
    "2202041009"
  ];
  List yearList = ['2023 - 2024', '2022 - 2023', '2021 - 2022', '2020 - 2021'];
  List branchFull1 = [
    "Chemical",
    "Civil",
    "Computer",
    "Electrical",
    "Electrical&",
    "Electronics&",
    "Information",
    "Mechanical",
    "Metallurgy&",
    "Production"
  ];
  List branchFull2 = [
    "Engineering",
    "Engineering",
    "Science",
    "Engineering",
    "Electronics",
    "Telecomm",
    "Technology",
    "Engineering",
    "Materials",
    "Engineering"
  ];
  List branchShort = [
    "ChE",
    "CE",
    "CSE",
    "EE",
    "EEE",
    "ETC",
    "IT",
    "ME",
    "MME",
    "PE"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        backgroundColor: const Color(0xFF001257),
        leading: IconButton(
          onPressed: () {
            setState(
              () {
                if (navId <= 2 && navId != 0) {
                  navId--;
                }
              },
            );
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
                ? Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              "Branches",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF001257),
                                  fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : navId == 1
                    ? Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Center(
                                child: Text(
                                  "Year",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF001257),
                                      fontSize: 25),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Center(
                                child: Text(
                                  "Student List",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF001257),
                                      fontSize: 25),
                                ),
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
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          navId++;
                        });
                      },
                      child: GridView.builder(
                        reverse: false,
                        itemCount: branchFull1.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 20,
                                crossAxisCount: 2,
                                mainAxisExtent: 140),
                        itemBuilder: ((context, index) {
                          return BranchTile(
                              branchSs: branchFull1[index],
                              branchTi: branchFull2[index],
                              short: branchShort[index]);
                        }),
                      ),
                    )
                  : navId == 1
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              navId++;
                            });
                          },
                          child: ListView.builder(
                            itemCount: yearList.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return YearTile(year: yearList[index]);
                            },
                          ))
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              navId++;
                            });
                          },
                          child: ListView.builder(
                            itemCount: studentList.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return StdTile(
                                stdName: studentList[index],
                                rollNo: rollList[index],
                              );
                            },
                          ),
                        ),
            )
          ],
        ),
      ),
    );
  }
}
