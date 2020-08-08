import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';
import './quiz.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question = 0;
  var _totalScore = 0;
  void _clickButton(int score) {
    _totalScore += score;

    setState(() {
      // if (_question < 2) {
      _question = _question + 1;
      //  } else {
      // _question = 0;
      // }
    });
    print("Button pressed");
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _question = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'question': 'whats your favourite color?',
        'anwsers': [
          {'text': 'black', 'score': 10},
          {'text': 'blue', 'score': 5},
          {'text': 'green', 'score': 8},
          {'text': 'yellow', 'score': 7}
        ]
      },
      {
        'question': 'whats your favourite animal?',
        'anwsers': [
          {'text': 'Tiger', 'score': 7},
          {'text': 'Lion', 'score': 8},
          {'text': 'Cuckoo', 'score': 8},
          {'text': 'Dog', 'score': 5}
        ]
      },
      {
        'question': 'whats your favourite teacher?',
        'anwsers': [
          {'text': 'Max', 'score': 10},
          {'text': 'Tassia', 'score': 5},
          {'text': 'Kristina', 'score': 7},
          {'text': 'Chintu', 'score': 1}
        ]
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _question < _questions.length
          ? Quiz(
              answerQuestion: _clickButton,
              questionIndex: _question,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
