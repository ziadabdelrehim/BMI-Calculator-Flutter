import 'dart:math';

class Calculation {
  double bmiResult = 0;
  String titleResult = "";
  String textResult = "";

  getBmi(int weight, double height) {
    bmiResult = weight / pow(height / 100, 2);

    if (bmiResult > 25) {
      titleResult = 'Over Weight';
      textResult =
          'You have a higher than normal body weight.\nTry to exercise more';
    } else if (bmiResult < 18) {
      titleResult = 'Under Weight';
      textResult =
          'You have a lower than normal body weight.\nYou can eat a bit more';
    } else {
      titleResult = "Normal";
      textResult = 'You have a normal body weight.\nGood job!';
    }
  }
}
