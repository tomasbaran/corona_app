// Author: Tomas Baran (http://tomasbaran.com)
// Start date: 26.3.2020

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/world_stats_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.encodeSansSemiExpanded().fontFamily,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: themeBackgroundColor,
        textTheme: TextTheme(
          // COVID-19 STATS headline
          headline1: TextStyle(
            fontFamily:
                GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w600)
                    .fontFamily,
            color: themePrimary6,
            fontSize: 34.0,
          ), // Country Header Titles: headline4
          headline4: TextStyle(
            fontFamily:
                GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w400)
                    .fontFamily,
            color: Colors.white,
            fontSize: 14,
          ), // Category tag
          subtitle1: TextStyle(
            color: Color(0xFF262E3B),
            fontSize: 13,
            fontFamily:
                GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w600)
                    .fontFamily,
          ), // Last update caption
          caption: TextStyle(
            fontSize: 11,
            fontFamily:
                GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w400)
                    .fontFamily,
            color: themePrimary4,
          ),
        ), // All cards
        cardTheme: CardTheme(
          margin: EdgeInsets.all(0),
          shadowColor: Color(0x33898E97),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
      home: WorldStatsScreen(),
    );
  }
}
