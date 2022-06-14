// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Text(
  //       "Hello World Travel",
  //       textDirection: TextDirection.ltr,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World Travel Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World Travel App"),
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
                      "Hello World Travel",
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
                      "Discover the world",
                      style: TextStyle(
                          fontSize: 20, color: Colors.deepPurpleAccent),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    // child: Image.network(
                    //   "https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg",
                    //   height: 350,
                    // ),
                    child: Center(
                      child: Text("This is used in the absence of the image"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: FlatButton(
                      child: Text("Contact Us"),
                      onPressed: () => contactUs(context),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Show alert
  void contactUs(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext builder) {
          return AlertDialog(
            title: Text("Contact Us"),
            content: Text("Mail us at hello@world.com"),
            actions: <Widget>[
              FlatButton(
                child: Text("Close"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}

void main() => runApp(MyApp());
