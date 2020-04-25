import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
// RunApp(MyApp());
//

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    //TODO: implement createstate 
    return _MyAppState();

  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answer() {
    setState(() {
    _questionIndex = _questionIndex + 1;  
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\'s ur fav color?',
      'what\'s is ur fav animal?',
      'what\'s is ur fav song?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              question[_questionIndex],
            ),
            Answer(_answer),
            Answer(_answer),
            Answer(_answer),
          ],
        ),
      ),
    );
  }
}
