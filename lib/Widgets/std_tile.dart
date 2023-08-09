import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StdTile extends StatelessWidget {
  const StdTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
        boxShadow: [BoxShadow(blurRadius: 12.0)],
      ),
      child: Center(
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Priyadarshini Bal",
                  style: TextStyle(
                    color: Color(0xFF2E4090),
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "2102031097",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF5A5D72),
                      fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
