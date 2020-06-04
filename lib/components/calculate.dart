import 'package:flutter/material.dart';

import 'hardcoded.dart';

class Calculate extends StatelessWidget {
  Calculate({@required this.butontitle, @required this.onTap});
  final Function onTap;
  final String butontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Kbottomcontainercolor,
        margin: EdgeInsetsDirectional.only(top: 7.0),
        width: double.infinity,
        height: Kbottomcontainerheight,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            butontitle,
            style: TextStyle(
              fontSize: 26.0,
            ),
          ),
        ),
      ),
    );
  }
}
