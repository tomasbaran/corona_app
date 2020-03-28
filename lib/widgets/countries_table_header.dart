import 'package:flutter/material.dart';
import '../constants.dart';

class CountriesTableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF6F798A),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: grid4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'ACTIVE',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'DIED',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'RECOVERED',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'ALL',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
