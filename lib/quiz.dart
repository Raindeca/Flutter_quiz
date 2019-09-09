import 'package:flutter/material.dart';
import 'package:my_firstapp/cardboard.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final Map<String, Object> question;

  Quiz({@required this.question, @required this.answerQuestion}); 
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Cardboard(question: question, answerQuestion: answerQuestion),
      ],
    );
  }
}
