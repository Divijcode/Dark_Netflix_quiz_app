/*import 'question.dart';

class Quizpage{

  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Jonas is not blood-d related to which of these people?', 'Martha Nielsen', 'Ines Kahnwald', 'Katharina Nielsen', 'Hannah Kruger', 'Ines Kahnwald'),
    Question('Who is Noah\'s wife?', 'Elisabeth', 'Charlotte', 'Agnes', 'Claudia', 'Elisabeth'),
    Question('Who invents the time machine?', 'Claudia Tiedeman', 'H.G. Tannhaus', 'Adam', 'Michael Kahnwald', 'H.G. Tannhaus'),
    Question('Who takes Mikkel Nielsen into the cave?', 'Jonas', 'No One', 'Ulrich', 'Bartosz', 'Jonas'),
    Question('Who is Charlotte\'s mother?', 'Doris', 'Agnes', 'Elisabeth', 'Franziska', 'Elisabeth'),
    Question('In how many years does the cycle take place?', '37', '27', '33', '23', '33'),
    Question('What is the name of the town where the events take place?', 'riverdale', 'Springfield', 'Winden', 'Hawkins', 'Winden'),
    Question('When was the Nuclear Power Plant inaugurated in Winden?', '1921', '1986', '1953', '2052', '1953'),
    Question('What is the name of Claudia Tiedeman\'s dog?', 'Gerchen', 'Gretchen', 'Genk', 'Gerkint', 'Gretchen'),
    Question('What is the name of Elisabeth\'s interpreter in 2052? ', 'Greta', 'Silja', 'Ines', 'Jana', 'Silja'),
    /*Question('', '', '', '', '', ''),
  Question('', '', '', '', '', ''),
  Question('', '', '', '', '', ''),
  Question('', '', '', '', '', ''),
  Question('', '', '', '', '', ''),*/


  ];


  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1)
      _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getoption1(){
    return _questionBank[_questionNumber].option1;

  }
  String getoption2(){
    return _questionBank[_questionNumber].option2;

  }
  String getoption3(){
    return _questionBank[_questionNumber].option3;

  }
  String getoption4(){
    return _questionBank[_questionNumber].option4;

  }
  String getCorrectAnswer(){
    return _questionBank[_questionNumber].correctanswer;
  }



}*/