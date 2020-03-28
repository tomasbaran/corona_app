import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color themeBackgroundColor = Color(0xFFD2D5DA);
const Color themePrimary0 = Color(0xFFC3C9D4);
const Color themePrimary1 = Color(0xFF9AABC8);
const Color themePrimary2 = Color(0xFF898E97);
const Color themePrimary3 = Color(0xFF6F798A);
const Color themePrimary4 = Color(0xFF404A5D); // ~themeBlueNumber
const Color themePrimary5 = Color(0xFF262E3B);
const Color themePrimary6 = Color(0xFF0D1E3C);

const Color themeRed = Color(0xFFE66161);
const Color themeOrange = Color(0xFFE6A561);
const Color themeGreen = Color(0xFFA8E661);
const Color themeBlueNumber = Color(0xFF404A5D);

const Color themeSlidingSegmentedControlActive = Color(0xFFFFFFFF);
const Color themeSlidingSegmentedControlInactive = themePrimary3;

// 4dp grid
const double grid1 = 4;
const double grid2 = 8;
const double grid3 = 12;
const double grid4 = 16;
const double grid5 = 20;
const double grid6 = 24;
const double grid7 = 28;
const double grid8 = 32;

// World card Text Style: Row
final TextStyle sWorldRow1Number = TextStyle(
  fontSize: 28,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w500)
      .fontFamily,
  color: themeBlueNumber,
);
final TextStyle sWorldRow1Percentage = TextStyle(
  fontSize: 16,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w200)
      .fontFamily,
  color: themePrimary3,
);
final TextStyle sWorldRow1Title = TextStyle(
  fontSize: 11,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w500)
      .fontFamily,
  color: themePrimary3,
);

// World card Text Style: Row3
final TextStyle sWorldRow3Number = TextStyle(
  fontSize: 17,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w500)
      .fontFamily,
  color: themeBlueNumber,
);

final TextStyle sWorldRow3Percentage = TextStyle(
  fontSize: 14,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w300)
      .fontFamily,
  color: themePrimary3,
);
const TextStyle sWorldRow3Title = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w700,
  color: themePrimary3,
);

// Country card Text Style
final TextStyle sCountryTitle = TextStyle(
  fontSize: 17,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w400)
      .fontFamily,
  color: themeBlueNumber,
);
final TextStyle sCountryNumber = TextStyle(
  fontSize: 16,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w500)
      .fontFamily,
  color: themeBlueNumber,
);
final TextStyle sCountryPercentage = TextStyle(
  fontSize: 14,
  fontFamily: GoogleFonts.encodeSansSemiExpanded(fontWeight: FontWeight.w300)
      .fontFamily,
  color: themeBlueNumber,
);
