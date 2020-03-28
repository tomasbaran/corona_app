import 'package:corona_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/country_row.dart';
import '../widgets/world_row1.dart';
import '../widgets/world_row3.dart';
import '../widgets/by_category.dart';
import '../widgets/countries_table_header.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../services/fetch_api.dart';

class WorldStatsScreen extends StatefulWidget {
  @override
  _WorldStatsScreenState createState() => _WorldStatsScreenState();
}

class _WorldStatsScreenState extends State<WorldStatsScreen> {
  int groupValue = 0;
  Color colorSegmentedControlAll = themeSlidingSegmentedControlActive;
  Color colorSegmentedControlToday = themeSlidingSegmentedControlInactive;
  Color colorSegmentedControlYesterday = themeSlidingSegmentedControlInactive;

  void updateSlidingSegmentedControlActiveButton(value) {
    setState(() {
      groupValue = value;
    });

// Update the active color
    Future.delayed(const Duration(milliseconds: 80), () {
      setState(() {
        switch (value) {
          case 0:
            {
              colorSegmentedControlAll = themeSlidingSegmentedControlActive;
              colorSegmentedControlToday = themeSlidingSegmentedControlInactive;
              colorSegmentedControlYesterday =
                  themeSlidingSegmentedControlInactive;
            }
            break;
          case 1:
            {
              colorSegmentedControlAll = themeSlidingSegmentedControlInactive;
              colorSegmentedControlToday = themeSlidingSegmentedControlActive;
              colorSegmentedControlYesterday =
                  themeSlidingSegmentedControlInactive;
            }
            break;
          case 2:
            {
              colorSegmentedControlAll = themeSlidingSegmentedControlInactive;
              colorSegmentedControlToday = themeSlidingSegmentedControlInactive;
              colorSegmentedControlYesterday =
                  themeSlidingSegmentedControlActive;
            }
            break;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    try {
      FetchAPI(url: apiUrlAll).getDecodedBody();
    } catch (e) {
      print('Error234: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(grid3, grid3, grid3, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'COVID-19 STATS',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: grid4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CupertinoSlidingSegmentedControl(
                        groupValue: groupValue,
                        backgroundColor: themePrimary0,
                        thumbColor: themePrimary5,
                        children: {
                          0: Text(
                            'All time',
                            style: TextStyle(
                              color: colorSegmentedControlAll,
                              fontSize: 13,
                            ),
                          ),
                          1: Text(
                            'Today',
                            style: TextStyle(
                              color: colorSegmentedControlToday,
                              fontSize: 13,
                            ),
                          ),
                          2: Text(
                            'Yesterday',
                            style: TextStyle(
                              color: colorSegmentedControlYesterday,
                              fontSize: 13,
                            ),
                          ),
                        },
                        onValueChanged: (value) {
                          updateSlidingSegmentedControlActiveButton(value);
                        }),
                    SizedBox(
                      height: grid1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: grid1),
                      child: Text(
                        'Last update: 13/03/2018, 19:30 GMT',
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: grid6,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ByCategory(category: 'WORLD'),
                        SizedBox(
                          height: grid1,
                        ),
                        WorldRow1(),
                        SizedBox(
                          height: grid3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            WorldRow3(
                              statusColor: themeOrange,
                              title: 'ACTIVE',
                            ),
                            SizedBox(
                              width: grid3,
                            ),
                            WorldRow3(
                              statusColor: themeRed,
                              title: 'DIED',
                            ),
                            SizedBox(
                              width: grid3,
                            ),
                            WorldRow3(
                              statusColor: themeGreen,
                              title: 'RECOVERED',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    StickyHeader(
                      header: Container(
                        decoration: BoxDecoration(
                          color: themeBackgroundColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(grid2),
                            bottomRight: Radius.circular(grid2),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ByCategory(category: 'BY COUNTRY'),
                            SizedBox(
                              height: grid1,
                            ),
                            CountriesTableHeader(),
                          ],
                        ),
                      ),
                      content: Column(
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
      ),
    );
  }
}
