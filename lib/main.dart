import 'package:flutter/material.dart';

// user difined widgets
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp();

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
      {
        'questionText': 'What\'s you favorite color?',
        'answers': ['Green', 'Yellow', 'Red', 'Blue']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Monkey', 'Lion', 'Lepord', 'Rabbit']
      },
      {
        'questionText': 'Who\'s your favorite favorite instructor?',
        'answers': ['Mr.Joseph', 'Mr. Melaku', 'Mr. Sime', 'Mr. Asmeraw']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex]['questionText'] as String,
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
