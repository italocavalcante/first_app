import 'package:flutter/material.dart';
import 'dart:io';

void addNumbers(double num1, double num2) {
  print(num1 + num2);
}

/*void main() {
  return runApp(MyApp());
}
*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print('Answer choosen!');
  }

  @override
  build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: [
          Text('The question.'),
          RaisedButton(
            child: Text(questions[0]),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: null,
          ),
        ],
      ),
    ));
  }
}
