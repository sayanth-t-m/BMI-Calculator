import 'package:bmi/costants.dart
';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  final String bmiResult;
  
final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch content horizontally
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              child: Text(

                'Your Result',
                style: klabeltextstyle.copyWith(color: Colors.white, fontSize: 35),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xF01D1E33),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kheightstyle,
                  ),
                  Text(
                    bmiResult,
                    style: klabeltextstyle.copyWith(fontSize: 100, fontWeight: FontWeight.w900),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      interpretation,
                      style: kcmstyle.copyWith(
                        color: const Color(0xC302DEAC),
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector( // Use GestureDetector for a simpler tap handler
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 80, // Set a fixed height for the button
              color: const Color(0xFF230F5F),
              alignment: Alignment.center,
              child: Text(
                'RE-CALCULATE',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepPurple[100],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
