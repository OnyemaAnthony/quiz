import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';
import 'result.dart';
import 'quizfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIdext = 0;
  var _totalScore =0;

  void resetQuiz(){
    setState(() {
      questionIdext = 0;
      _totalScore = 0;
    });

  }

  void answerQuestion(int score) {

    _totalScore+=score;
    setState(() {
      questionIdext += 1;
//      if(questionIdext >=questions.length){
//        questionIdext = 0;
//      }
    });

  }

  var questions = [
    {
      'questionText': 'what is your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'white', 'score': 1}
      ],
    },
    {
      'questionText': 'what is your favourite animal?',
      'answer': [
        {'text': 'rabbit', 'score': 3},
        {'text': 'snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
    {
      'questionText': 'who is your favourite instructor?',
      'answer': [
        {'text': 'Anthony', 'score': 1 },
        {'text': 'capacity', 'score': 1},
        {'text': 'joy', 'score': 1},
        {'text': 'cynthia', 'score': 1}
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quiz app'),
        ),
        body: questionIdext < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIdext,
                questions: questions,
              )
            : Result(_totalScore,resetQuiz),
      ),
    );
  }
}
