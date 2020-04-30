import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {

    String resultText;

    if (resultScore <= 20) {
      resultText = 'Great going Lad!!';
    } else if (resultScore <= 25) {
      resultText = 'Onto becoming Champ!';
    } else if (resultScore <= 30) {
      resultText = 'No, stopping Now!';
    } else {
      resultText = 'Better luck next Time';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              ),
          FlatButton(child: 
          Text('Restart Quiz!', 
          ), 
          textColor: Colors.green ,
          onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
