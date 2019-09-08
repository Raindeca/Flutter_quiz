import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 5) {
      resultText = 'You Got A Congrats :)';
    } else if (resultScore == 4) {
      resultText = 'Pretty likeable!, You Got B';
    } else if (resultScore == 3) {
      resultText = 'Acceptable :(, You Got C';
    } else if (resultScore ==2) {
      resultText = 'Too bad! :( You Got D';
    } else {resultText = 'Remedial? You got E';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.white,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
