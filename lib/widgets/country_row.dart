import 'package:corona_app/constants.dart';
import 'package:flutter/material.dart';

class CountryRow extends StatelessWidget {
  final String confirmedNo;
  final String activeNo;
  final String diedNo;
  final String recoveredNo;
  final String country;

  CountryRow(
      {this.country,
      this.activeNo,
      this.confirmedNo,
      this.diedNo,
      this.recoveredNo});
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
                    country ?? '',
                    style: sCountryTitle,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  activeNo ?? '',
                  style: sCountryNumber.copyWith(color: themeOrange),
                ),
                Text(diedNo ?? '',
                    style: sCountryNumber.copyWith(color: themeRed)),
                Text(recoveredNo ?? '',
                    style: sCountryNumber.copyWith(color: themeGreen)),
                Text(
                  confirmedNo ?? '',
                  style: sCountryNumber,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '',
                  style: sCountryPercentage,
                ),
                Text(
                  '',
                  style: sCountryPercentage,
                ),
                Text(
                  '',
                  style: sCountryPercentage,
                ),
                Text(
                  '',
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
