import './question.dart';


class Quiz{
  //Underscore _ denotes a private variable
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions){
    _questions.shuffle();
  }

//Getters
  List<Question> get questions => _questions;
  int get length => _questions.length;
  int get questionNumber => _currentQuestionIndex+1;
  int get score => _score;

  Question get nextQuestion {
    _currentQuestionIndex ++;
    if (_currentQuestionIndex >=length) return null;
    return _questions[_currentQuestionIndex];
  }

  void answer(bool isCorrect){
    if (isCorrect) _score ++;
  }


}