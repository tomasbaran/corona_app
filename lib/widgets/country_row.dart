import 'package:flutter/material.dart';

class CountryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('USA'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('19 239'),
              Text('19 239'),
              Text('19 239'),
              Text('19 239'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('12%'),
              Text('19%'),
              Text('39%'),
              Text('23%'),
            ],
          ),
        ],
      ),
    );
  }
}
