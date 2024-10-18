import 'dart:math' show pow;

class CalcBrain {
  CalcBrain({
required this.weight, required this.height});

  final int weight;
  final int height;

  late final double _bmi = _calculateBMI();

  double _calculateBMI() {
    return weight / pow(height / 100, 2);
  }

  
String calculate() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getMeaning() {
    switch (getResult()) {
      case 'overweight':
        return 'You have higher than normal body weight, Try to exercise more';
      case 'normal':
        return 'Great you have healthy BMI, keep it up';
      case 'underweight':
        return 'You are underweight, Try to eat a bit more';
      default:
        return ''; 
    }
  }
}
