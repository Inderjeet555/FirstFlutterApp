import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function setPointer;
  final String  answer;

  Answer(this.setPointer, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          child: Text(answer),
          textColor: Colors.white,
          onPressed: setPointer),
    );
  }
}
