import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/country_row.dart';
import '../widgets/world_row1.dart';
import '../widgets/world_row3.dart';
import '../widgets/by_category.dart';
import '../widgets/countries_table_header.dart';

class WorldStatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'COVID-19 STATS',
              textAlign: TextAlign.center,
            ),
            Column(
              children: <Widget>[
                CupertinoSlidingSegmentedControl(
                    children: {
                      'all': Text('All time'),
                      'today': Text('Today'),
                      'yesterday': Text('Yesterday'),
                    },
                    onValueChanged: (value) {
                      print(value);
                    }),
                Text('Last update: '),
              ],
            ),
            Column(
              children: <Widget>[
                ByCategory(category: 'WORLD'),
                WorldRow1(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    WorldRow3(),
                    WorldRow3(),
                    WorldRow3(),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  ByCategory(category: 'BY COUNTRY'),
                  CountriesTableHeader(),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                        CountryRow(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
