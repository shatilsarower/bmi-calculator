import 'package:flutter/material.dart';

import 'hardcoded.dart';

// ignore: camel_case_types
class iconcontent extends StatelessWidget {
  iconcontent({this.icon, this.label});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: Kicontextstyle,
        ),
      ],
    );
  }
}
