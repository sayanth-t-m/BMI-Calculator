import 'customw.dart';
import 'icon.dart';
import 'costants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result.dart';
import 'brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectGender;

  double height = 160;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    colour: selectGender == Gender.male
                        ? kmalecolor
                        : kinactivecolor,
                    customw: custom(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    colour: selectGender == Gender.female
                        ? kfemalecolor
                        : kinactivecolor,
                    customw: custom(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: kactivecolor,
                customw: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: FittedBox(
                          child: Text(
                            'Height',
                            style: klabeltextstyle,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kheightstyle,
                            ),
                            Text('cm', style: kcmstyle)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          overlayColor: Colors.greenAccent,
                          thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 12,
                              elevation: 10,
                              pressedElevation: 30),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 0,
                          max: 250,
                          activeColor: Colors.tealAccent,
                          inactiveColor: Colors.teal,
                          thumbColor: Colors.green,
                          onChanged: (double value) {
                            setState(() {
                              height = value.roundToDouble();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                onPress: () {}),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kactivecolor,
                  customw: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Weight',
                          style: klabeltextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              weight.toString(),
                              style: kweightstyle,
                            ),
                            Text(
                              'kg',
                              style: kcmstyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 50,height: 50,
                              child: FloatingActionButton(
                                heroTag: 396,
                                splashColor: Colors.tealAccent,
                                child: Icon(
                                  Icons.remove,
                                  size: 33,
                                  color: Colors.white,
                                ),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    if (weight == 1) {
                                      weight = weight;
                                    } else {
                                      weight = weight - 1;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(width: 50,height: 50,
                              child: FloatingActionButton(
                                heroTag: 936,
                                splashColor: Colors.red,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight = weight + 1;
                                  });
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  onPress: () {},
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kactivecolor,
                  customw: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Age',
                          style: klabeltextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              age.toString(),
                              style: kweightstyle,
                            ),
                            Text(
                              'years',
                              style: kcmstyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 50,height: 50,
                              child: FloatingActionButton(
                                heroTag: 963,
                                splashColor: Colors.tealAccent,
                                child: Icon(
                                  Icons.remove,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    if (age == 1) {
                                      age = age;
                                    } else {
                                      age = age - 1;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(width: 50,height: 50,
                              child: FloatingActionButton(
                                heroTag: 369,
                                splashColor: Colors.red,
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  onPress: () {},
                ),
              )
            ],
          )),
          Material(
            color: const Color(0xFF230F5F),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(60),
              topLeft: Radius.circular(60),
            ),
            child: InkWell(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepPurple[100]),
                  ),
                ),
              ),
              onTap: () {
                CalcBrain calc = CalcBrain(
                  weight: weight,
                  height: height.toInt(),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                            BMIresult: calc.calculate(),
                            ResultText: calc.getresult(),
                            mean: calc.mean(),
                          )),
                );
              },
              splashColor: const Color(0xE07B00FF),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(60),
              ),
            ),
          )
        ],
      ),
    );
  }
}
