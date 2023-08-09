import 'package:flutter/material.dart';

class BranchTile extends StatelessWidget {
  const BranchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 137,
        width: 137,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey[400],
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ChE',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF2E4090),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chemical",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF5A5D72)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Engineering",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF5A5D72))),
                        ],
                      )
                    ],
                  )
                ],
              )
              // Text(
              //   "Chemical Engineering",
              //   style: TextStyle(
              //     fontSize: 20,
              //     color: Color(0xFF5A5D72),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
