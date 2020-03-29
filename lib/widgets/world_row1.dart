import 'package:flutter/material.dart';
import '../constants.dart';

class WorldRow1 extends StatelessWidget {
  final String number;
  WorldRow1({this.number});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: grid4,
          ),
          Text(
            number ?? '.',
            style: sWorldRow1Number,
          ),
          Text(
            '0.3%',
            style: sWorldRow1Percentage,
          ),
          SizedBox(
            height: grid2,
          ),
          Text(
            'CONFIRMED CASES',
            style: sWorldRow1Title,
          ),
          SizedBox(
            height: grid3,
          ),
        ],
      ),
    );
  }
}
