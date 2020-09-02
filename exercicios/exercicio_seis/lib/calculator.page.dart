import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _operation = '';
  String _firstNumber = '';
  String _secondNumber = '';
  String _result = '';

  void _resetValues() {
    setState(() {
      _result = '';
      _operation = '';
      _firstNumber = '';
      _secondNumber = '';
    });
  }

  void _checkNumberTyped(String typedNumber) {
    setState(() {
      _result += typedNumber;
    });
    if (_operation.isEmpty) {
      setState(() {
        _firstNumber += typedNumber;
      });
    } else if (_operation.isNotEmpty) {
      setState(() {
        _secondNumber += typedNumber;
      });
    }
  }

  void _chooseOperation(String operation) {
    setState(() {
      _operation = operation;
      _result += operation;
    });
  }

  void _calculate(String operation) {
    double firstNumber = double.parse(_firstNumber);
    double secondNumber = double.parse(_secondNumber);
    double result;

    switch (operation) {
      case '+':
        result = firstNumber+secondNumber;
        break;
      case '-':
        result = firstNumber-secondNumber;
        break;
      case 'x':
        result = firstNumber*secondNumber;
        break;
      case '÷':
        result = firstNumber/secondNumber;
        break;
      case '%':
        result = firstNumber%secondNumber;
        break;
    }
    setState(() {
      _result = result.toStringAsPrecision(3);
      _operation = '';
      _firstNumber = _result;
      _secondNumber = '';
    });
  }

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [


                        Text(
                            _result,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 94,
                            ),
                        ),

                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: GridView.count(
                  padding: const EdgeInsets.all(15),
                  crossAxisCount: 4,
                  children: <Widget>[
                    _buildButton(
                      Color(0xffAFAFAF),
                      Colors.black,
                      'AC',
                      _resetValues,
                      false
                    ),
                    _buildButton(
                        Color(0xffAFAFAF),
                        Colors.black,
                        '+/-',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xffAFAFAF),
                        Colors.black,
                        '%',
                        _chooseOperation
                    ),
                   _buildButton(
                        Color(0xffFF9500),
                        Colors.white,
                        '÷',
                        _chooseOperation
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '7',
                      _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '8',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '9',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xffFF9500),
                        Colors.white,
                        'x',
                        _chooseOperation
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '4',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '5',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '6',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xffFF9500),
                        Colors.white,
                        '-',
                        _chooseOperation
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '1',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '2',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        '3',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xffFF9500),
                        Colors.white,
                        '+',
                        _chooseOperation
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), topLeft: Radius.circular(50)),
                          color: Color(0xff333333),
                        ),
                        child: FlatButton(
                          onPressed: () => _checkNumberTyped('0'),
                            child: Text(
                              '0',
                              style: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.bold),
                            ))
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), topRight: Radius.circular(50)),
                          color: Color(0xff333333),
                        ),
                        child: FlatButton(
                          onPressed: () => _checkNumberTyped('0'),
                            child: Text(
                              '',
                              style: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.bold),
                            ))
                    ),
                    _buildButton(
                        Color(0xff333333),
                        Colors.white,
                        ',',
                        _checkNumberTyped
                    ),
                    _buildButton(
                        Color(0xffFF9500),
                        Colors.white,
                        '=',
                        () => _calculate(_operation),
                      false
                    ),
                  ],
                ),
              ),
            )
          ]
        ),
      ),
      );
  }

  Widget _buildButton(Color backgroundColor, Color textColor, String value, Function funcione, [bool hasParameter = true]) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: backgroundColor,
          ),
          child: FlatButton(
            onPressed: hasParameter ? () => funcione(value) : () => funcione(),
              child: Text(
                value,
                style: TextStyle(color: textColor, fontSize: 36.0, fontWeight: FontWeight.bold),
              ))
      ),
    );
  }
}
