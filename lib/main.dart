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
    //implement createState
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
    const question = const [
      // creating a map to store questions and answers
      // data structures called maps have been used to declare the createState
      {
        'questionText': 'what\'s ur fav color?',
        'answers': ['Black', 'Red', 'Blue', 'white'],
      },

      {
        'questionText': 'what\'s is ur fav animal?',
        'answers': ['Rabbit', 'snake', 'monkey', 'lion'],
      },

      {
        'questionText': 'what\'s is ur fav song?',
        'answers': ['hip hop', 'pop', 'jazz', 'blue'],
      },

      {
        'questionText': 'what\'s is ur fav no?',
        'answers': ['one', 'five', 'six', 'nine'],
      },
    ];

    // var dummy = ['Hello']; // if i add const here it wont work var dummy = const** ['Hello'];
    // // dummy.add('Vivan');
    // print(dummy);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Question(
              question[_questionIndex]['questionText'],
            ),
            //spread operator(...) and then add toList()
            ...(question[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answer, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
