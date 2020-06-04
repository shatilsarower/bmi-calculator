import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/components/calculate.dart';
import 'package:bmi_calculator/components/hardcoded.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiresult,
      @required this.resulttext,
      @required this.interpretation});
  final String bmiresult;
  final String resulttext;
  final interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CHEAKER'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: KRTitleTextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: Kactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resulttext.toUpperCase(),
                    style: resulttextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: KBMINumbertextsyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: KBMIResulttextstyle,
                  ),
                  Calculate(
                      butontitle: 'RE-CALCULATE',
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
