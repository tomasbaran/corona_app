import 'package:flutter/material.dart';

class ByCategory extends StatelessWidget {
  final String category;
  ByCategory({@required this.category});
  @override
  Widget build(BuildContext context) {
    return Text(category);
  }
}
