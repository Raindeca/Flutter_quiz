import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cardboard extends StatelessWidget {
  final String questionText;

  Cardboard(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black26),
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
            )
          ]),
          width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              height: 200,
              color: Colors.purple,
              child: Icon(FontAwesomeIcons.kiwiBird)),
          Text(
         questionText,
         style: TextStyle(fontSize: 28),
         textAlign: TextAlign.center,
       ),
          Text(
              'Start Doing what what\'s necessary, then do what\'s possible, and suddenly you are doing the Impossible'),
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // children: <Widget>[
              //   FlatButton(
              //      color: Colors.lightGreen[300],
              //       textColor: Colors.white,
              //       child: Text(answerText),
              //       onPressed: selectHandler,
              //   ),
              //   FlatButton(
              //     color: Colors.lightGreen[300],
              //       textColor: Colors.white,
              //       child: Text(answerText),
              //       onPressed: selectHandler,
              //   ),
              //   FlatButton(
              //     color: Colors.lightGreen[300],
              //       textColor: Colors.white,
              //       child: Text(answerText),
              //       onPressed: selectHandler,
              //   ),
              // ],
            ),
          )
        ],
      ),
    );
  }
}