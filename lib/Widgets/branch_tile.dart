import 'package:flutter/material.dart';

class BranchTile extends StatelessWidget {
  final String branchSs;
  final String branchTi;
  final String short;

  const BranchTile(
      {super.key,
      required this.branchSs,
      required this.branchTi,
      required this.short});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        margin: const EdgeInsets.all(0.5),
        height: 137,
        width: 137,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(0, 152, 145, 145),
          boxShadow: [
            BoxShadow(
                blurRadius: 1.0,
                offset: const Offset(1, 1),
                spreadRadius: 1,
                color: Colors.grey.shade400),
            const BoxShadow(
                blurRadius: 5.0,
                offset: Offset(-6, -6),
                spreadRadius: 1,
                color: Colors.white)
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    short,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFF2E4090),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            branchSs,
                            style: const TextStyle(
                                fontSize: 20, color: Color(0xFF5A5D72)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(branchTi,
                              style: const TextStyle(
                                  fontSize: 20, color: Color(0xFF5A5D72))),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
