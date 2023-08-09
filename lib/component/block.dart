import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  String s1, s2;
  Block({super.key, required this.s1, required this.s2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 137,
      width: 137,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          // ),

          Text(
            s1,
            style: TextStyle(
              fontSize: 25,
              color: Color(0xFF2E4090),
            ),
          ),
          Text(
            s2,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF5A5D72),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[400],
      ),
    );
  }
}
