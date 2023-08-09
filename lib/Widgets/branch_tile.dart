import 'package:flutter/material.dart';

class BranchTile extends StatelessWidget {
  const BranchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        margin: EdgeInsets.all(0.5),
        height: 137,
        width: 137,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromARGB(0, 152, 145, 145),
          boxShadow: [
            BoxShadow(
                blurRadius: 1.0,
                offset: Offset(1, 1),
                spreadRadius: 1,
                color: Colors.grey.shade400),
            BoxShadow(
                blurRadius: 5.0,
                offset: Offset(-6, -6),
                spreadRadius: 1,
                color: Colors.white)
          ],
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
            ],
          ),
        ),
      ),
    );
  }
}
