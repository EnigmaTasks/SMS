import 'package:flutter/material.dart';

class YearTile extends StatelessWidget {
  final String year;
  const YearTile({super.key, required this.year});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              blurRadius: 15.0,
              offset: const Offset(6, 6),
              spreadRadius: 1,
              color: Colors.grey.shade500),
          const BoxShadow(
              blurRadius: 5.0,
              offset: Offset(-6, -6),
              spreadRadius: 1,
              color: Colors.white)
        ],
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
