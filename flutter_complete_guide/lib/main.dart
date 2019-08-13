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
  final _questions = const [
    {
      'questionText': "What\'s your favorite color?",
      'answers': ['Black', 'Blue', 'Red', 'Green']
    },
    {
      'questionText': "What\'s your favorite animal?",
      'answers': ['Rabbit', 'Pigeon', 'Cow', 'Fish']
    },
    {
      'questionText': "Who\'s your favorite instructor?",
      'answers': ['Max', 'Jhon', 'Ajay', 'Krish']
    },
  ];

  void _answerQuestion() {
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
              : Result()
        ));
  }
}
