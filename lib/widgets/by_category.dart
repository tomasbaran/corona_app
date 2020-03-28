import 'package:corona_app/constants.dart';
import 'package:flutter/material.dart';

class ByCategory extends StatelessWidget {
  final String category;
  ByCategory({@required this.category});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: grid1),
      child: Text(
        category,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.left,
      ),
    );
  }
}
