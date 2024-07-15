import 'package:flutter/material.dart';
import 'package:mahmoud/screens/Home_page.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const TukoApp());
}

class TukoApp extends StatelessWidget {
  const TukoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
