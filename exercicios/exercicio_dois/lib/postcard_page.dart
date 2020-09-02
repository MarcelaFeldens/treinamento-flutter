import 'package:flutter/material.dart';

class PostcardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Postcard'
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: Icon(Icons.close, color: Colors.white)
              );
            },
          ),
        ),
        body: Container(
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Color(0xFFFC3875)
                              ),
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.person, color: Colors.white),
                                  )
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                      children: <Widget>[
                                        Text(
                                            'Recipient',
                                          style: TextStyle(
                                            fontSize: 20
                                          )
                                        )
                                      ]
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                          'Amelie N Mason',
                                          style: TextStyle(
                                              color: Color(0xFF767676),
                                              fontSize: 20
                                          )
                                      )
                                    ],
                                  )
                                ]
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            )
        )
    );
  }
}