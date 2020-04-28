import 'package:flutter/material.dart';
import 'dart:core';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);


  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Center,
      width: double.infinity,
      margin: EdgeInsets.all(30), 
      // alignment: Alignment.center,
      child: Text(
      questionText,
      style: TextStyle(fontSize: 30),
      textAlign: TextAlign.center,
      ), 
    );
  }
}