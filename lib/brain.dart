import 'dart:math';



class CalcBrain {
  CalcBrain({required this.weight,required this.height});

  late final int weight;
  late final int height;


 late double _bmi ;

  String calculate()
  {
   _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult()
  {
    if(_bmi>=25)
    {
      return 'overweight';
    }
    else if(_bmi>18.5)
    {
      return 'normal';
    }
    else
    {
      return 'underweight';
    }
  }
  String mean()
  {
    if(_bmi>=25)
    {
      return 'You have higher than normal body weight,Try to exercise more';
    }
    else if(_bmi>18.5)
    {
      return 'Great you have healthy BMI,keep it up';
    }
    else
    {
      return 'You are underweight, Try to eat a bit more';
    }
  }
}





