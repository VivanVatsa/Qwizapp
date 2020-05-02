import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// import './question.dart';
// import './answer.dart';

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
  final _question = const [
    // can also use static const quest............
    // const question = const [
    // creating a map to store questions and answers
    // data structures called maps have been used to declare the createState
    {
      'questionText': 'what\'s ur fav color?',
      'answers': [
        {'text': 'Black', 'Score': 15},
        {'text': 'Red', 'Score': 10},
        {'text': 'Blue', 'Score': 5},
        {'text': 'white', 'Score': 3}
      ],
    },

    {
      'questionText': 'what\'s is ur fav animal?',
      'answers': [
        {'text': 'Rabbit', 'Score': 10},
        {'text': 'snake', 'Score': 9},
        {'text': 'monkey', 'Score': 8},
        {'text': 'lion', 'Score': 7}
      ],
    },

    {
      'questionText': 'what\'s is ur fav song?',
      'answers': [
        {'text': 'hip hop', 'Score': 5},
        {'text': 'pop', 'Score': 10},
        {'text': 'jazz', 'Score': 15},
        {'text': 'blue', 'Score': 20}
      ],
    },

    {
      'questionText': 'what\'s is ur fav no?',
      'answers': [
        {'text': 'one', 'Score': 1},
        {'text': 'five', 'Score': 2},
        {'text': 'six', 'Score': 3},
        {'text': 'nine', 'Score': 4}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    _totalScore = 0;      
    }); 
  }

  void _answer(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    // if (_questionIndex < _question.length) {
    //   print('We have more Questions lined up.');
    // }
    // return _totalScore;
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello']; // if i add const here it wont work var dummy = const** ['Hello'];
    // // dummy.add('Vivan');
    // print(dummy);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answers: _answer,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
