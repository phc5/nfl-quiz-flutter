import 'package:flutter/material.dart';
import 'question.dart';

class QuizBrain {
  int _currentQuestion = 0;

  List<Question> _questions = [
    Question(
        'It takes over 3,000 cows to supply the NFL with enough leather for a year\'s supply of footballs.',
        true),
    Question('Miami has hosted the most Superbowls (10).', true),
    Question('Tom Brady plays for the Tampa Bay Buccaneers.', true),
    Question(
        'There have been 4 instances in NFL history where a team has pulled off back-to-back championships.',
        false),
    Question(
        'New England alone holds the NFL record for most Super Bowls.', false),
    Question('Drew Brees has won the regular season MVP award.', false),
    Question('Adrian Peterson is the NFL all-time leading rusher.', false),
    Question(
        'Michael Vick was taken with the 1st pick in the NFL Draft by the Atlanta Falcons.',
        true),
    Question(
        'Four Heisman Trophy winners have gone on to be MVP of the Super Bowl.',
        true),
    Question(
        'Texas has produced more pro football Hall of Famers than any other state.',
        false)
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
