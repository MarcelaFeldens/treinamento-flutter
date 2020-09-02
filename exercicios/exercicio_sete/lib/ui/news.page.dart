import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0B1723),
          title: Text(
              'News',
              style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xff0B1723),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: (NetworkImage('https://i.insider.com/5f4c7c887ffa48002894d16b?width=1200&format=jpeg'))
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Title test', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w900)),
                      ),
                      Text('Content test', style: TextStyle(fontSize: 14, color: Colors.white))
                    ],
                  ),
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    color: Color(0xff595151),
                  ),
                ),
              ]
            ),
          ),
        )
    );
  }
}