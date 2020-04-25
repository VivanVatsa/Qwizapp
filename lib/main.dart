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
      // creating a map to store questions and answers
      {
       'questionText':  'what\'s ur fav color?',
       'answer': ['Black', 'Red', 'Blue', 'white'],
      },

      {
       'questionText':  'what\'s is ur fav animal?',
       'answer': ['Rabbit', 'snake', 'monkey', 'lion'],
      },

      {
       'questionText':  'what\'s is ur fav song?',
       'answer': ['hip hop', 'pop', 'jazz', 'blue'],
      },

    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex]['questionText'],
            ),
            ...(question[_questionIndex]['answer'] as List<String>).map(answer)
            return Answer(_answer, answer);
          ],
        ),
      ),
    );
  }
}
