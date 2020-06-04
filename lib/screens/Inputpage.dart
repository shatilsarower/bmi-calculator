import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/components/Roundiconbutton.dart';
import 'package:bmi_calculator/components/bmi_brain.dart';
import 'package:bmi_calculator/components/calculate.dart';
import 'package:bmi_calculator/components/hardcoded.dart';
import 'package:bmi_calculator/components/iconcontent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'results.page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 100;
  int weight = 45;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CHEAKER'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    color: selectedgender == Gender.male
                        ? Kactivecardcolor
                        : kinactivecardcolor,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    color: selectedgender == Gender.female
                        ? Kactivecardcolor
                        : kinactivecardcolor,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Kactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: Kicontextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: Knumbertextstyle,
                      ),
                      Text(
                        'cm',
                        style: Kicontextstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x1fEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 220,
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Kactivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: Kicontextstyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          weight.toString(),
                          style: Knumbertextstyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: Kicontextstyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          age.toString(),
                          style: Knumbertextstyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: Kactivecardcolor,
                  ),
                ),
              ],
            ),
          ),
          Calculate(
            butontitle: 'CALCULATE',
            onTap: () {
              BMIbrain bmi = BMIbrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiresult: bmi.calculateBMI(),
                    resulttext: bmi.getResult(),
                    interpretation: bmi.getInterpretantion(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
