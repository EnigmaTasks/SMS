import 'package:flutter/material.dart';

class YearTile extends StatelessWidget {
  const YearTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
        boxShadow: [BoxShadow(blurRadius: 12.0)],
      ),
      child: const Center(
        child: Text(
          "2023-2024",
          style: TextStyle(
            color: Color(0xFF2E4090),
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
