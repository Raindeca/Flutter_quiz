import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final List<Map<String, Object>> answers;
  final List<Widget> answerWidgets = <Widget>[];
  
  Answer(this.selectHandler, this.answers) {
    List<Widget> answers = <Widget>[];
    print(answers);
    
    this.answers.forEach((answer) {
      answerWidgets.add(
        RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
          splashColor: Colors.blue[300],
          highlightColor: Colors.blue[300],
          color: Colors.indigo[300],
          textColor: Colors.white,
          child: Text(answer["text"]),
          onPressed: () {
            selectHandler(answer['score']);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: this.answerWidgets
    );
  }
}
