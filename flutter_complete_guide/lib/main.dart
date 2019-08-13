import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': "What\'s your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 12}
      ]
    },
    {
      'questionText': "What\'s your favorite animal?",
      'answers': [   {'text': 'Rabbit', 'score': 10},
        {'text': 'Cow', 'score': 7},
        {'text': 'Fish', 'score': 2},
        {'text': 'Donkey', 'score': 1}]
    },
    {
      'questionText': "Who\'s your favorite instructor?",
      'answers': [   {'text': 'Henry', 'score': 10},
        {'text': 'Max', 'score': 5},
        {'text': 'jhon', 'score': 3},
        {'text': 'Ajay', 'score': 12}]
    },
  ];

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore =0;
    });


  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Sample"),
              centerTitle: true,
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore,_resetQuiz)));
  }
}
