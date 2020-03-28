import 'package:flutter/material.dart';
import '../constants.dart';

class WorldRow1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: grid4,
          ),
          Text(
            '58 673 493',
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
