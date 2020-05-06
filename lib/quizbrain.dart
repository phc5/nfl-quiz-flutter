import 'package:flutter/material.dart';
import 'question.dart';

class QuizBrain {
  int _currentQuestion = 0;

  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true)
  ];

  void getNextQuestion() {
    if (_currentQuestion < _questions.length - 1) {
      _currentQuestion++;
    }
  }

  void resetQuiz() {
    _currentQuestion = 0;
  }

  String getQuestionText() {
    return _questions[_currentQuestion].questionText;
  }

  bool validateAnswer(bool choice) {
    return _questions[_currentQuestion].questionAnswer == choice;
  }

  bool isFinished() {
    bool isLastQuestion = _currentQuestion == _questions.length - 1;

    return isLastQuestion;
  }
}
