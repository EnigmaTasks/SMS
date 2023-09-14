import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms/Pages/profilepage.dart';

class StdTile extends StatelessWidget {
  final String stdName;
  final String rollNo;

  const StdTile({
    super.key,
    required this.stdName,
    required this.rollNo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Text(
                      stdName,
                      style: const TextStyle(
                        color: Color(0xFF2E4090),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Text(
                      rollNo,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF5A5D72),
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
