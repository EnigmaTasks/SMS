import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms/Pages/profilepage.dart';
import 'package:sms/component/detail.dart';

class StdTile extends StatelessWidget {
  const StdTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
                blurRadius: 15.0,
                offset: Offset(6, 6),
                spreadRadius: 1,
                color: Colors.grey.shade500),
            BoxShadow(
                blurRadius: 5.0,
                offset: Offset(-6, -6),
                spreadRadius: 1,
                color: Colors.white)
          ],
        ),
        child: Center(
          child: Center(
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Text(
                      "Debasish Dey",
                      style: TextStyle(
                        color: Color(0xFF2E4090),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Text(
                      "2202040017",
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
