import 'package:flutter/material.dart';
import 'package:my_firstapp/result.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
//Syntax Below here is an alternative version of above code
//this syntax below is a shorten version of it and only work
//if it has only my code line
//Note: ctrl + space for shortcut in scaffold
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your Favorite Color?',
      'answer': [
        {'text': 'Green', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your Favorite Anime Genre?',
      'answer': [
        {'text': 'Isekai', 'score': 2},
        {'text': 'Sci-fi', 'score': 1},
        {'text': 'Romance', 'score': 10},
        {'text': 'Slice of Life', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your Favorite Music Genre?',
      'answer': [
        {'text': 'Artcore', 'score': 1},
        {'text': 'Bossa Nova', 'score': 3},
        {'text': 'Jazz', 'score': 3},
        {'text': 'Dangdut', 'score': 10}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more question');
    } else {
      print('No More Question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    //it's basically using method concept
    return MaterialApp(
      title: 'Flutter Demo ver 1.0.1',
      home: Scaffold(
        //scaffold = make a base page design
        appBar: AppBar(
          title:  Text('Guessing Anime Characters name'),
          backgroundColor: Colors.black87,
        ),
        body: Container(
          decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.blue[300],
            Colors.blue[700],
            Colors.blue[600],
            Colors.blue[700],
          ],
        ),
      ),
          child: 
          _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
