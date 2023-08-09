import 'package:flutter/material.dart';

class Block2 extends StatelessWidget {
  String s3;
  Block2({super.key, required this.s3});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 250,
      child: Center(
        child: Text(
          s3,
          style: TextStyle(
            color: Color(0xFF001257),
          ),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.grey[400]),
    );
  }
}
