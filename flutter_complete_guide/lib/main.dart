import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/question.dart';
import './answer.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Sample"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
             ...(  questions[_questionIndex]['answers'] as List<String>).map((answer){
             return Answer(_answerQuestion,answer);
           }).toList()
            ],
          ),
        ));
  }
}
