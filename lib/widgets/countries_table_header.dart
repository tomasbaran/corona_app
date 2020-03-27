import 'package:flutter/material.dart';

class CountriesTableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('ACTIVE'),
          Text('DIED'),
          Text('RECOVERED'),
          Text('ALL'),
        ],
      ),
    );
  }
}
