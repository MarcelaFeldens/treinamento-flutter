import 'package:exercicio_quatro/color_utils.dart';
import 'package:flutter/material.dart';

class ColorsPalette extends StatefulWidget {
  @override
  _ColorsPaletteState createState() => _ColorsPaletteState();
}

class _ColorsPaletteState extends State<ColorsPalette> {
  Color _firstColor;
  Color _secondColor;
  Color _thirdColor;

  TextEditingController firstColorController = TextEditingController();
  TextEditingController secondColorController = TextEditingController();
  TextEditingController thirdColorController = TextEditingController();

    _updateColors() {
      setState(() {
        _firstColor = ColorUtils.fromHex(firstColorController.text);
        _secondColor = ColorUtils.fromHex(secondColorController.text);
        _thirdColor = ColorUtils.fromHex(thirdColorController.text);
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child:
              Expanded(
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: _firstColor,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: firstColorController,
                                    style: TextStyle(
                                      fontSize: 25
                                    ),
                                ),
                            ),
                          )
                        ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: _secondColor,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: secondColorController,
                                style: TextStyle(
                                  fontSize: 25
                                ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: _thirdColor,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: thirdColorController,
                                style: TextStyle(
                                  fontSize: 25
                                ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Container(
                            height: 50.0,
                            width: 350.0,
                            child: RaisedButton(
                              onPressed: _updateColors,
                              color: Color(0xffd3d3d3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0)
                              ),
                              child: Text(
                                "Atualizar",
                                style: TextStyle(color: Colors.black, fontSize: 22.0)
                              ),
                            ),
                          ),
                        )
                      )
                    ],
                  ),
                )
              )
          )
          ),
        );
  }
}