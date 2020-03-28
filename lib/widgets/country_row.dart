import 'package:corona_app/constants.dart';
import 'package:flutter/material.dart';

class CountryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: grid3,
      ),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: grid2,
                    left: grid2,
                    bottom: grid2,
                  ),
                  child: Text(
                    'USA',
                    style: sCountryTitle,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '349 239',
                  style: sCountryNumber.copyWith(color: themeOrange),
                ),
                Text('219 239',
                    style: sCountryNumber.copyWith(color: themeRed)),
                Text('319 239',
                    style: sCountryNumber.copyWith(color: themeGreen)),
                Text(
                  '925 239',
                  style: sCountryNumber,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '12%',
                  style: sCountryPercentage,
                ),
                Text(
                  '19%',
                  style: sCountryPercentage,
                ),
                Text(
                  '39%',
                  style: sCountryPercentage,
                ),
                Text(
                  '23%',
                  style: sCountryPercentage,
                ),
              ],
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
