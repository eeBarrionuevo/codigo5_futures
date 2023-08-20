import 'package:codigo5_futures/pages/home_page.dart';
import 'package:codigo5_futures/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme(),
      ),
      home: ProfilePage(),
    );
  }
}
