import 'package:flutter/material.dart';
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
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: themeBackgroundColor,
      ),
      home: WorldStatsScreen(),
    );
  }
}
