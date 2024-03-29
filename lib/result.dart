import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 5) {
      resultText = 'Score: 100\nYou Got A Congrats :)';
    } else if (resultScore == 4) {
      resultText = 'Score: 80\nPretty likeable!, You Got B';
    } else if (resultScore == 3) {
      resultText = 'Score: 60\nAcceptable :( You Got C';
    } else if (resultScore == 2) {
      resultText = 'Score: 40\nToo bad! :( You Got D';
    } else if (resultScore == 1) {
      resultText = 'Score:20\nDid you already study? You Got E :(';
    } else {
      resultText = 'I can\'t show you the score :( \nYou got F';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.lightGreen[500],
            highlightColor: Colors.blue[300],
            splashColor: Colors.blue[300],
            textColor: Colors.white,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
