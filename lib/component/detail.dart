import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String first;
  String last;
  Details({
    super.key,
    required this.first,
    required this.last,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            first,
            style: TextStyle(
                fontSize: 22, color: Color.fromARGB(255, 36, 55, 134)),
          ),
          Text(
            last,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
