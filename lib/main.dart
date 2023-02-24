import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyQuizApp());
}

class MyQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    //TODO: implement createState
    return _MyQuizeAppState();
  }
}

class _MyQuizeAppState extends State<MyQuizApp> {
  var _questionIndex = 0;

  void _answearQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext contex) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answearQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
