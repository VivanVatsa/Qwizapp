import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answers;
  final int questionIndex;
  Quiz({@required this.question, @required this.answers ,@required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        //spread operator(...) and then add toList()
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answers(answer['Score']), answer['text']);
        }).toList()
      ],
    );
  }
}
