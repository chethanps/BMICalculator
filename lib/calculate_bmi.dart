import 'dart:math';

class CalculateBMI {
  int height;
  double weight;
  double _bmi;
  double _idealWeight;
  static const int _idealBMI = 24;

  CalculateBMI(this.height, this.weight) {
    _bmi = weight/ pow(height/100,2);
    _idealWeight = _idealBMI * pow(height/100,2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'OverWeight';
    } else if(_bmi >= 18.5) {
      return 'Normal';
    }
    return 'UnderWeight';
  }

  String getInterpretation(){
    if(_bmi >= 25) {
      int loose = (weight-_idealWeight).toInt();

      return 'You are overweight, Start working out and try to loose $loose Kg Weigth';
    } else if(_bmi >= 18.5) {
      return 'Continue the same, everything is Normal';
    } else {
      int gain = (_idealWeight-weight).toInt();
      return 'Eat more, you are underweight and try to gain $gain Kg Weigth';
    }
  }
}