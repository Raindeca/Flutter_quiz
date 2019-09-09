import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black26),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blue[100],
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
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
              color: Colors.transparent,
              child: Image.asset('assets/images/flutter.png')),
          Text(
            questionText,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Text(
              'Tips: You can search Google if you want :)',
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          )
        ],
      ),
    );
  }
}
