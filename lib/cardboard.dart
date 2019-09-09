import 'package:flutter/material.dart';
import 'package:my_firstapp/answer.dart';
import './question.dart';


class Cardboard extends StatelessWidget {
  final Map<String, Object> question;
  final Function answerQuestion;
  Cardboard({this.question, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white,
      margin: EdgeInsets.all(14),
      child: Column(
        children: <Widget>[
          Question(this.question['questionText']),
          Answer(this.answerQuestion , this.question['answer'])
        ],
      ),
    );
  }
}