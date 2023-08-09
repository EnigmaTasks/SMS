import 'package:flutter/material.dart';
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
              // color: Colors.white,
              height: 40,
            ),
            //Body
            SizedBox(
              // color: Colors.greenAccent,
              height: 700,
              width: 350,
              child: navId == 0
                  ? GridView.builder(
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
