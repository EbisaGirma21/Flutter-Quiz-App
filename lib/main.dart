import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What1\'s you favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          FilledButton(
            onPressed: _answerQuestion,
            child: const Text('Answer 1'),
          ),
          FilledButton(
            onPressed: () => print('Answer 2 Chosen!'),
            child: const Text('Answer 2'),
          ),
          FilledButton(
            onPressed: () {
              // ...
              print('Answer 3 Chosen!');
            },
            child: const Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
