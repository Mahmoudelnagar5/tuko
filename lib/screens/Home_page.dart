// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mahmoud/components/Catgory_item.dart';
import 'package:mahmoud/screens/Colors_page.dart';
import 'package:mahmoud/screens/Family_Members.dart';
import 'package:mahmoud/screens/Number_page.dart';
import 'package:mahmoud/screens/Phrase_Page.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text(
          "Tuko",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffEf9235),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: const Duration(seconds: 1),
                  child: const NumbersPage(),
                ),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(
              0xff5D8B3E,
            ),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: const Duration(seconds: 1),
                  child: const FamilyMembersPage(),
                ),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color.fromARGB(255, 76, 41, 100),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: const Duration(seconds: 1),
                  child: const ColorPage(),
                ),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff51B0D5),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: const Duration(seconds: 1),
                  child: PhrasesPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
