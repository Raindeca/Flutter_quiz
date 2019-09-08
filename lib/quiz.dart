import 'package:flutter/material.dart';
import 'package:my_firstapp/cardboard.dart';

// import './question.dart';
// import './answer.dart';

class Quiz extends StatelessWidget {
  // final List<Map<String, Object>> questions;
  // final int questionIndex;
  final Function answerQuestion;
  // final List<Widget> questionWidget = <Widget>[];
  final Map<String, Object> question;

  Quiz({@required this.question, @required this.answerQuestion}) {
    // List<Widget> answers = <Widget>[];
    // print(questions[questionIndex]['answer']);
    // for (Map<String, Object> answer in this.questions[questionIndex]['answer']) {
    //   answers.add(
    //     Answer(() => answerQuestion(answer['score']), answer['text']);
    //   );
    // }
    // // this.questions[questionIndex]['answer'].forEach((answer) {
    // //   answers.add(
    // //     Answer(() => answerQuestion(answer['score']), answer['text']);
    // //   );
    // // });

    // this.questionWidget.add(
    //   Question(
    //     questions[questionIndex]['questionText'],
    //   ),
    // );

    // this.questionWidget.add(
    //   new Column(
    //     children: answers,
    //   ),
    // ); 
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Cardboard(question: question, answerQuestion: answerQuestion),
      ],//this.questionWidget
    );
  }
}
