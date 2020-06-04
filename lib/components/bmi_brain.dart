import 'dart:math';

class BMIbrain {
  BMIbrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi; //private value

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return ' Underweight';
    }
  }

  String getInterpretantion() {
    if (_bmi >= 25) {
      return 'You have a higher then normal body weight. Try exercise more '
          'and more ';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job';
    } else {
      return 'You have a lower then normal body weight . You can eat a bit '
          'more to catch up';
    }
  }
}
