import 'package:flutter/material.dart';

// d main() {
// unApp(MyApp());
//

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    //TODO: implement createstate 
    return MyAppState();

  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answer() {
    setState(() {
    questionIndex = questionIndex + 1;  
    });
    print(questionIndex);
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
            Text(
              question[questionIndex],
            ),
             RaisedButton(
                child: Text('Answer 1'), 
                onPressed: answer,
             ),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('This is the answer 2 u chose facker')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print('this is the answer 3 u chose facker')),
          ],
        ),
      ),
    );
  }
}
