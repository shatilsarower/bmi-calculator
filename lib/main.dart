import 'package:flutter/material.dart';

import 'components/hardcoded.dart';
import 'screens/Inputpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Kthemeprimarycolor,
        scaffoldBackgroundColor: KscaffoldBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
