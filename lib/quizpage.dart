import 'question.dart';

class Quizpage{

int _questionNumber=0,questionNumberAgain=0;
List<Question> _questionBank = [
  Question('Which two characters are dating at the beggining of the series?','Martha & Erik','Erik & Franziska','Bartosz & Martha',' Jonas & Franziska', 'Bartosz & Martha'),
  Question('Which year does Mikkel disappear in to?', '1986', '2006', '1996', '1976', '1986'),
  Question('What is the name of the Priest?', 'Aleksander', 'Egon', 'Noah', 'Helge', 'Noah'),
  Question('When would the apocalypse happen?', 'May 27', 'July 27', 'June 27', 'August 27', 'June 27'),
  Question('Which of these children is the first to go missing in 2019?', 'Magnus', 'Erik', 'Martha', 'Jonas', 'Erik'),
  Question('Which one of these is NOT one of ulrich\'s children?' , 'Jonas', 'Mikkel', 'Martha', 'Magnus', 'Jonas'),
  Question('Which character do we witness committing suicide at the beginning of the series?', 'Charlotte Doppler', 'Michael Kahnwald', 'Hannah Kahnwald', 'Bartosz tiedeman', 'Michael Khanwald'),
  Question('What is Charlotte Doppler\'s job?', 'Headteacher', 'Nurse', 'Chief of Police', 'Nuclear Plant Manager', 'Chief of Police'),
  Question('Which character is Ulrich having an affair with?', 'Agnes', 'Hannah', 'Regina', 'Claudia', 'Hannah'),
  Question('What is the name of the secret society of time travellers?', 'Dark Mundus', 'Sic Mundus', 'Mundus Creatus', 'Creatus Esc', 'Sic Mundus'),
  Question('Jonas is not blood-d related to which of these people?', 'Martha Nielsen', 'Ines Kahnwald', 'Katharina Nielsen', 'Hannah Kruger', 'Ines Kahnwald'),
  Question('Who is Noah\'s wife?', 'Elisabeth', 'Charlotte', 'Agnes', 'Claudia', 'Elisabeth'),
  Question('Who invents the time machine?', 'Claudia Tiedeman', 'H.G. Tannhaus', 'Adam', 'Michael Kahnwald', 'H.G. Tannhaus'),
  Question('Who takes Mikkel Nielsen into the cave?', 'Jonas', 'No One', 'Ulrich', 'Bartosz', 'Jonas'),
  Question('Who is Charlotte\'s mother?', 'Doris', 'Agnes', 'Elisabeth', 'Franziska', 'Elisabeth'),
  Question('In how many years does the cycle take place?', '37', '27', '33', '23', '33'),
  Question('What is the name of the town where the events take place?', 'Riverdale', 'Springfield', 'Winden', 'Hawkins', 'Winden'),
  Question('When was the Nuclear Power Plant inaugurated in Winden?', '1921', '1986', '1953', '2052', '1953'),
  Question('What is the name of Claudia Tiedeman\'s dog?', 'Gerchen', 'Gretchen', 'Genk', 'Gerkint', 'Gretchen'),
  Question('What is the name of Elisabeth\'s interpreter in 2052? ', 'Greta', 'Silja', 'Ines', 'Jana', 'Silja'),
  Question('In how many years does the cycle take place?', '37', '27', '33', '23', '33'),
  Question('What is the name of the town where the events take place?', 'riverdale', 'Springfield', 'Winden', 'Hawkins', 'Winden'),
  Question('When was the Nuclear Power Plant inaugurated in Winden?', '1921', '1986', '1953', '2052', '1953'),
  Question('What is the name of Claudia Tiedeman\'s dog?', 'Gerchen', 'Gretchen', 'Genk', 'Gerkint', 'Gretchen'),
  Question('What is the name of Elisabeth\'s interpreter in 2052? ', 'Greta', 'Silja', 'Ines', 'Jana', 'Silja'),
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
void quizAgain(){
  _questionNumber=15;
  questionNumberAgain=15;
}
int isFinished(){
  return _questionNumber;
}
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



}