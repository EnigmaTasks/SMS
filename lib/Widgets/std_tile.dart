import 'package:flutter/material.dart';

class StdTile extends StatelessWidget {
  const StdTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.grey[400]),
      child: const Center(
        child: Text(
          "Priyadarshini Bal",
          style: TextStyle(
            color: Color(0xFF001257),
          ),
        ),
      ),
    );
  }
}
