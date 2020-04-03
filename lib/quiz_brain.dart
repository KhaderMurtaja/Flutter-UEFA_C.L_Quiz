import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question(
      'REAL MADRID has won the UEFA Champions League 13 times',
      true,
    ),
    Question(
      'Marseille has never won UEFA Champions League',
      false,
    ),
    Question(
      'Cristiano Ronaldo is the most player scores in UEFA Champions League',
      true,
    ),
    Question(
      'Iker Casillas has played 176 times in UEFA Champions League',
      false,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
