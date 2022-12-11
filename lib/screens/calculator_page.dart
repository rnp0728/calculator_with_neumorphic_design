// ignore_for_file: prefer_const_constructors

import 'constants.dart';
import 'round_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'calculator_brain.dart';
import 'neu_container.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

const Color colorDark = Colors.black87;
const Color colorLight = Color(0xFFe6eeff);

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';

  // the main logic for the calculator
  CalculatorBrain calc = CalculatorBrain();
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neumorphic Calculator',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                color: darkMode ? colorDark : Colors.white,
                letterSpacing: 1)),
        backgroundColor: darkMode ? Colors.blueGrey.shade700 : Colors.lightBlue,
      ),
      backgroundColor: darkMode ? Colors.blueGrey.shade700 : colorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            darkMode ? darkMode = false : darkMode = true;
                          });
                        },
                        child: _switchMode()),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 500, maxHeight: 40),
                    child: Text(
                      result,
                      style: darkMode
                          ? TextStyle(
                              fontSize: 60,
                              color: Colors.lightGreenAccent,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                            )
                          : kResultTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    calc.resultOperationText,
                    style: kOperationStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: 'AC',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC");
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '+/-',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+/-");
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '%',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("%");
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '÷',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('÷');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '7',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("7");
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '8',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('8');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '9',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('9');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: 'x',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('x');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '4',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("4");
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '5',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('5');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '6',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('6');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '-',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('-');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '1',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('1');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '2',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('2');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '3',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('3');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '+',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('+');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '0',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('0');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40.0)),
                      buttonWidth: 2.9,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '.',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('.');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                    RoundButton(
                      buttonText: '=',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('=');
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      darkMode: darkMode,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _switchMode() {
    return NeuContainer(
      darkMode: darkMode,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      borderRadius: BorderRadius.circular(40),
      child: SizedBox(
        width: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.wb_sunny,
            color: darkMode ? Colors.grey : Colors.redAccent,
          ),
          Icon(
            Icons.nightlight_round,
            color: darkMode ? Colors.green : Colors.grey,
          ),
        ]),
      ),
    );
  }
}
