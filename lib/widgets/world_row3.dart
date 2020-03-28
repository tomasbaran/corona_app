import 'package:corona_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorldRow3 extends StatelessWidget {
  final Color statusColor;
  final String title;
  WorldRow3({this.statusColor, this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FaIcon(
                  FontAwesomeIcons.solidCircle,
                  size: 10,
                  color: statusColor,
                ),
              ),
            ]),
            Text(
              '1 223 293',
              style: sWorldRow3Number,
            ),
            Text(
              '0.3%',
              style: sWorldRow3Percentage,
            ),
            SizedBox(
              height: grid2,
            ),
            Text(
              title,
              style: sWorldRow3Title,
            ),
            SizedBox(
              height: grid3,
            ),
          ],
        ),
      ),
    );
  }
}
