// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = "Hello World Travel App";
  static const String _header = "Hello World Travel";
  static const String _subHeader = "Discover the world";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      _header,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      _subHeader,
                      style: TextStyle(
                          fontSize: 20, color: Colors.deepPurpleAccent),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.network(
                      "https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg",
                      height: 350,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: MyStateAlertWidget(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyStateAlertWidget extends StatelessWidget {
  static const String _contactString = "Contact Us";
  static const String _contentString = "Mail us at hello@world.com";
  static const String _closeString = "Close";

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(_contactString),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(_contactString),
          content: Text(_contentString),
          actions: <Widget>[
            TextButton(
              child: Text(_closeString),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
