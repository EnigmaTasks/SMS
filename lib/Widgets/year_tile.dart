import 'package:flutter/material.dart';

class YearTile extends StatelessWidget {
  final String year;
  const YearTile({super.key, required this.year});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
        boxShadow: const [BoxShadow(blurRadius: 5.0)],
      ),
      child: Center(
        child: Text(
          year,
          style: const TextStyle(
            color: Color(0xFF2E4090),
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
