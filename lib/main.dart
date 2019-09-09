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
      'questionText': 'Who\'s the founder of Flutter? (1/5)',
      'answer': [
        {'text': 'Facebook', 'score': 0},
        {'text': 'Google', 'score': 1},
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Apple', 'score': 0}
      ],
    },
    {
      'questionText': 'What language does flutter use? (2/5)',
      'answer': [
        {'text': 'Kotlin', 'score': 0},
        {'text': 'React Native', 'score': 0},
        {'text': 'Dart', 'score': 1},
        {'text': 'C++', 'score': 0}
      ],
    },
    {
      'questionText': 'Google has developed a tools exclusively for Flutter, what is that? (3/5)',
      'answer': [
        {'text': 'Dart DevTools', 'score': 1},
        {'text': 'Dart Debugger', 'score': 0},
        {'text': 'Dart Android Studio', 'score': 0},
        {'text': 'Flutter DevTools', 'score': 0}
      ],
    },
    {
      'questionText': 'A group of widgets in Array is called? (4/5)',
      'answer': [
        {'text': 'Widgets', 'score': 0},
        {'text': 'Child', 'score': 0},
        {'text': 'Children', 'score': 1},
        {'text': 'Flex', 'score': 0}
      ],
    },
    {
      'questionText': 'in StatefulWidget, When will The Ui get rendered? (5/5)',
      'answer': [
        {'text': 'When Input data or Local State gets null', 'score': 0},
        {'text': 'When Input data or Local State gets changes', 'score': 1},
        {'text': 'When Input data changes', 'score': 0},
        {'text': 'When Input data gets value', 'score': 0}
      ],
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
          title: Text('Flutter Quiz! by Raindeca D H'),
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
          child: _questionIndex < _questions.length
              ? Quiz(
                  question: _questions[_questionIndex],
                  answerQuestion: _answerQuestion,
                  // questionIndex: _questionIndex,
                  // questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
