import 'package:flutter/material.dart';
import './cardboard.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container( 
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.centerLeft,
      //     end: Alignment.centerRight,
      //     stops: [0.1, 0.5, 0.7, 0.9],
      //     colors: [
      //       Colors.white30,
      //       Colors.white54,
      //       Colors.white60,
      //       Colors.white70,
      //     ]
      //   )
      // ),
      // width: double.infinity,
      // margin: EdgeInsets.all(10),
      // child: Text(
      //   questionText,
      //   style: TextStyle(fontSize: 28),
      //   textAlign: TextAlign.center,
      // ),
      child: Cardboard(questionText),
    );
  }
}