import 'package:flutter/material.dart';

import './question.dart';

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
             RaisedButton(
                child: Text('Answer 1'), 
                onPressed: _answer,
             ),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('This is the _answer 2 u chose facker')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print('this is the _answer 3 u chose facker')),
          ],
        ),
      ),
    );
  }
}
