import 'package:corona_app/services/fetch_list_of_jsons_api.dart';

import 'region.dart';
import '../services/fetch_json_api.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:intl/number_symbols.dart';

enum RegionType { world, country }

class RegionData {
  final String apiUrlAll = 'https://corona.lmao.ninja/all';
  final String apiUrlCountries =
      'https://corona.lmao.ninja/countries?sort=%7Bparameter%7D';

  Region _region = Region();
  List<Region> _listOfRegions = [];

  void setWorldRegion(Map<String, dynamic> json) {
    _region.confirmed = NumberFormat('###,000', 'zz').format(json['cases']);
    _region.recovered = NumberFormat('###,000', 'zz').format(json['recovered']);
    _region.active = NumberFormat('###,000', 'zz').format(json['active']);
    _region.died = NumberFormat('###,000', 'zz').format(json['deaths']);
    var updated =
        DateTime.fromMicrosecondsSinceEpoch(json['updated'] * 1000).toLocal();
    _region.updated = DateFormat.yMMMMEEEEd().add_Hm().format(updated);
  }

  void setCountryRegion(Map<String, dynamic> json) {
    _region.regionName = json['country'];
    print('setCountryRegion: ${_region.regionName}');
  }

  Region setRegionData(Map<String, dynamic> json, RegionType regionType) {
    // Format number from #### -> # ###
    numberFormatSymbols['zz'] = NumberSymbols(
      NAME: "zz",
      DECIMAL_SEP: '.',
      GROUP_SEP: '\u00A0',
      PERCENT: '%',
      ZERO_DIGIT: '0',
      PLUS_SIGN: '+',
      MINUS_SIGN: '-',
      EXP_SYMBOL: 'e',
      PERMILL: '\u2030',
      INFINITY: '\u221E',
      NAN: 'NaN',
      DECIMAL_PATTERN: '#,##0.###',
      SCIENTIFIC_PATTERN: '#E0',
      PERCENT_PATTERN: '#,##0%',
      CURRENCY_PATTERN: '\u00A4#,##0.00',
      DEF_CURRENCY_CODE: 'AUD',
    );

    if (regionType == RegionType.world) {
      setWorldRegion(json);
    } else if (regionType == RegionType.country) {
      setCountryRegion(json);
    }

    return _region;
  }

  Future<void> fetchCountries() async {
    List<dynamic> jsonList =
        await FetchListOfJsonsApi(url: apiUrlCountries).getDecodedBody();

    // Format number from #### -> # ###
    numberFormatSymbols['zz'] = NumberSymbols(
      NAME: "zz",
      DECIMAL_SEP: '.',
      GROUP_SEP: '\u00A0',
      PERCENT: '%',
      ZERO_DIGIT: '0',
      PLUS_SIGN: '+',
      MINUS_SIGN: '-',
      EXP_SYMBOL: 'e',
      PERMILL: '\u2030',
      INFINITY: '\u221E',
      NAN: 'NaN',
      DECIMAL_PATTERN: '#,##0.###',
      SCIENTIFIC_PATTERN: '#E0',
      PERCENT_PATTERN: '#,##0%',
      CURRENCY_PATTERN: '\u00A4#,##0.00',
      DEF_CURRENCY_CODE: 'AUD',
    );
    for (var json in jsonList) {
      //print('country: ${json['country']}');

      Region newRegion = Region(
        regionName: json['country'],
        confirmed: NumberFormat('###,000', 'zz').format(json['cases']),
        active: NumberFormat('###,000', 'zz').format(json['active']),
        died: NumberFormat('###,000', 'zz').format(json['deaths']),
        recovered: NumberFormat('###,000', 'zz').format(json['recovered']),
      );
      //print('_region.country: ${newRegion.regionName}');
      _listOfRegions.add(newRegion);
      //  print('listOfRegions: $_listOfRegions');
    }
    for (var regionItem in _listOfRegions) {
      print('_listOfRegions.country: ${regionItem.regionName}');
    }
  }

  Future<void> fetchWorldData() async {
    Map<String, dynamic> json =
        await FetchJsonApi(url: apiUrlAll).getDecodedBody();
    setRegionData(json, RegionType.world);
  }

  String get recovered => _region.recovered;
  String get active => _region.active;
  String get died => _region.died;
  String get confirmed => _region.confirmed;
  String get updated => _region.updated;

  List<Region> get listOfRegions => _listOfRegions;
}
